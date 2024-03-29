import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_test/components/shared_scaffold.dart';
import 'package:graphql_test/graphql/__generated__/sales.req.gql.dart';
import 'package:graphql_test/graphql/__generated__/schema.schema.gql.dart';
import 'package:graphql_test/graphql/graphql_client.dart';
import 'package:graphql_test/utils/show_toast.dart';
import 'package:intl/intl.dart';

class Product {
  String name;
  double price;
  int quantity;
  String? id;

  Product(
      {required this.name,
      required this.price,
      required this.quantity,
      this.id});
}

class SaleFormPage extends StatefulWidget {
  const SaleFormPage({super.key});
  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<SaleFormPage> {
  List<Product> productList = [];
  double total = 0.0;
  DateTime _selectedDate = DateTime.now();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final client = GetIt.I<Client>();
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SharedScaffold(
      title: "Detalle de Venta",
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Fecha de Venta',
                ),
                readOnly:
                    true, // Para evitar la edición directa del campo de texto
                controller: TextEditingController(
                  // Mostrar la fecha seleccionada en el campo de texto
                  text: DateFormat('dd-MM-yyyy').format(_selectedDate),
                ),
                onTap: () async {
                  // Mostrar el selector de fecha al hacer clic en el campo de texto
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: _selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (selectedDate != null) {
                    setState(() {
                      _selectedDate =
                          selectedDate; // Actualizar la fecha seleccionada
                    });
                  }
                },
              ),
              const SizedBox(height: 16),
              TypeAheadField(
                emptyBuilder: (BuildContext context) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'No se encontraron elementos',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  );
                },
                suggestionsCallback: (search) async {
                  if (search == "") {
                    return [];
                  }
                  final productsReq = GproductFindAllReq(
                    (b) => b
                      ..vars.productFilter.filter.type = "or"
                      ..vars.productFilter.filter.filters.replace([
                        GIFilterCriterion((b) => b
                          ..property = "name"
                          ..type = "like"
                          ..value = search),
                        GIFilterCriterion((b) => b
                          ..property = "code"
                          ..type = "like"
                          ..value = search),
                      ])
                      ..fetchPolicy = FetchPolicy.NetworkOnly,
                  );

                  final queryResult = await client
                      .request(
                        productsReq,
                      )
                      .first;

                  return queryResult.data?.productFindAll.toList();
                },
                builder: (context, controller, focusNode) {
                  searchController = controller;
                  return TextField(
                      controller: searchController,
                      focusNode: focusNode,
                      autofocus: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Producto',
                      ));
                },
                itemBuilder: (context, product) {
                  return ListTile(
                    title: Text(product.id + " -- " + product.name),
                    subtitle: Text((product.code ?? "---") +
                        " - " +
                        NumberFormat.currency(symbol: "\$")
                            .format(product.price)),
                  );
                },
                onSelected: (product) {
                  Product producttoAdd = Product(
                    id: product.id,
                    name: product.name,
                    price: product.price,
                    quantity: 1,
                  );
                  setState(() {
                    productList.add(producttoAdd);
                    total += product.price;
                  });

                  searchController.clear();
                },
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('Nombre')),
                    DataColumn(label: Text('Precio')),
                    DataColumn(label: Text('Cantidad')),
                    DataColumn(label: Text('Subtotal')),
                    DataColumn(label: Text('Acciones'))
                  ],
                  rows: [
                    ...productList.map((product) {
                      double subTotal = product.price * product.quantity;
                      String formattedPrice = NumberFormat.currency(
                        locale: 'ar',
                        symbol: '\$',
                        decimalDigits: 2,
                      ).format(subTotal);
                      return DataRow(
                        cells: [
                          DataCell(Text(product.name)),
                          DataCell(
                              TextFormField(
                                initialValue: product.price.toString(),
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  hintText: 'Ingrese el precio',
                                  prefixText: '\$',
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    product.price =
                                        double.tryParse(value) ?? 0.0;
                                  });
                                },
                              ),
                              showEditIcon: true),
                          DataCell(
                              TextFormField(
                                initialValue: product.quantity.toString(),
                                keyboardType: TextInputType.number,
                                onChanged: (value) {
                                  setState(() {
                                    product.quantity = int.tryParse(value) ?? 1;
                                  });
                                },
                              ),
                              showEditIcon: true),
                          DataCell(Text(formattedPrice)),
                          DataCell(Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  setState(() {
                                    productList.removeWhere(
                                        (element) => element.id == product.id);
                                    total -= subTotal;
                                  });
                                },
                              ),
                            ],
                          ))
                        ],
                      );
                    }),
                    DataRow(cells: [
                      const DataCell(
                          Text('')), // Celda vacía para la columna de ID
                      const DataCell(
                          Text('')), // Celda vacía para la columna de ID
                      DataCell(Text(total == 0.0 ? "" : 'Total:')),
                      DataCell(Text(total == 0.0
                          ? ""
                          : NumberFormat.currency(
                                  symbol: "\$", decimalDigits: 2)
                              .format(total))),
                      const DataCell(Text('')),
                    ])
                  ],
                ),
              )
              // Otros controles y botones según sea necesario
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: total != 0
            ? () {
                _showConfirmationDialog(context);
              }
            : null,
        backgroundColor: total != 0 ? Colors.blue : Colors.grey,
        foregroundColor: total != 0 ? Colors.white : Colors.black,
        child: const Icon(Icons.save),
      ),
    );
  }

  Future<void> _showConfirmationDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmar Venta'),
          content: const Text('¿Estás seguro de que deseas guardar la venta?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el modal
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () async {
                await _guardarCambios();
                context.go("/sales");
              },
              child: const Text('Guardar'),
            ),
          ],
        );
      },
    );
  }

  // Implementa la lógica de guardado aquí
  _guardarCambios() async {
    print(_selectedDate);
    final saleReq = GcreateSaleReq(
      (b) => b
        ..vars
            .saleInputDto
            .saleDetails
            .replace(productList.map((e) => GSaleDetailInputDto(
                  (b) => b
                    ..price = e.price
                    ..quantity = e.quantity
                    ..productId = e.id,
                ))),
    );
    final queryResult = await client
        .request(
          saleReq,
        )
        .first;
    final successData = queryResult.data?.createSale.successData;
    showToastSuccess("Se guardo con exito la venta N°$successData");

    Navigator.of(context).pop();
  }
}

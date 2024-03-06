import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_test/components/shared_scaffold.dart';
import 'package:graphql_test/graphql/__generated__/sale_page.req.gql.dart';
import 'package:graphql_test/graphql/__generated__/schema.schema.gql.dart';
import 'package:graphql_test/graphql/graphql_client.dart';
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

class SalePage extends StatefulWidget {
  final String saleId;
  const SalePage({super.key, required this.saleId});
  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<SalePage> {
  List<Product> productList = [];
  double total = 0.0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final client = GetIt.I<Client>();
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final saleReq = GSaleReq(
      (b) => b..vars.saleId = "1",
    );
    return SharedScaffold(
      title: "Detalle de Venta",
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Operation(
                  operationRequest: saleReq,
                  builder: (context, response, error) {
                    if (response != null && response.loading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    final saleResult = response!.data!.sale;
                    productList = saleResult.details
                        .map((detail) => Product(
                            name: detail.product?.name ?? "",
                            price: detail.price ?? 0,
                            quantity: detail.quantity ?? 0))
                        .toList();
                    return DataTable(
                      columns: const [
                        DataColumn(label: Text('Nombre')),
                        DataColumn(label: Text('Precio')),
                        DataColumn(label: Text('Cantidad')),
                        DataColumn(label: Text('Subtotal')),
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
                              DataCell(Text(NumberFormat.currency(
                                symbol: "\$",
                              ).format(product.price))),
                              DataCell(Text(product.quantity.toString())),
                              DataCell(Text(formattedPrice)),
                            ],
                          );
                        }),
                        DataRow(cells: [
                          const DataCell(
                              Text('')), // Celda vacía para la columna de ID
                          const DataCell(
                              Text('')), // Celda vacía para la columna de ID
                          const DataCell(Text('Total:')),
                          DataCell(Text(NumberFormat.currency(
                                  symbol: "\$", decimalDigits: 2)
                              .format(saleResult.total))),
                        ])
                      ],
                    );
                    // Ot
                  },
                  client: client)
            ],
          ),
        ),
      ),
    );
  }
}

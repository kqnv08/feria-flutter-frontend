import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_test/components/shared_scaffold.dart';
import 'package:graphql_test/graphql/__generated__/products.req.gql.dart';
import 'package:flutter/services.dart';
import 'package:graphql_test/graphql/__generated__/products_page.req.gql.dart';
import 'package:graphql_test/graphql/__generated__/schema.schema.gql.dart';
import 'package:graphql_test/utils/format_currency.dart';
import 'package:graphql_test/utils/show_toast.dart';

int _currentPage = 1;
int _pageSize = 10;
int _newPageIndex = 0;

class MyDataTableWidget extends StatefulWidget {
  const MyDataTableWidget({super.key, required this.title});
  final String title;

  @override
  State<MyDataTableWidget> createState() => _MyDataTableWidgetState();
}

class _MyDataTableWidgetState extends State<MyDataTableWidget> {
  final client = GetIt.I<Client>();
  int _sortColumIndex = 0;
  bool _orderSort = false;
  String _sortColumName = "id";

  final productsReq = GproductListPageReq(
    (b) => b
      ..requestId = 'MyReviewsReq'
      ..vars.filterCriteria.sort.column = "id"
      ..vars.filterCriteria.sort.order = "DESC"
      ..vars.filterCriteria.page = 1
      ..fetchPolicy = FetchPolicy.NetworkOnly,
  );

  void _handleSort(int columnIndex, bool ascending) {
    String columnName;
    // Mapea el índice de la columna a tu nombre de columna en el backend
    switch (columnIndex) {
      case 0:
        columnName = 'id';
        break;
      case 1:
        columnName = 'code';
        break;
      case 2:
        columnName = 'name';
        break;
      case 3:
        columnName = 'price';
        break;
      default:
        columnName = 'id';
    }
    _sortColumIndex = columnIndex;
    _orderSort = !_orderSort;
    _sortColumName = columnName;

    refetchProductListPage();
  }

  void refetchProductListPage() {
    final nextReviewsReq = productsReq.rebuild(
      (b) => b
        ..vars.filterCriteria.sort.column = _sortColumName
        ..vars.filterCriteria.sort.order = _orderSort ? "ASC" : "DESC"
        ..vars.filterCriteria.page = _currentPage
        ..vars.filterCriteria.limit = _pageSize,
    );
    client.requestController.add(nextReviewsReq);
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return SharedScaffold(
      title: "Productos",
      body: Center(
        child: Operation(
          client: client,
          operationRequest: productsReq,
          builder: (context, response, error) {
            if (response != null && response.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final productListPage = response!.data?.productListPage;
            TextEditingController controller = TextEditingController();

            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          hintText: 'Ingrese su búsqueda',
                        ),
                      ),
                    ),
                    SizedBox(
                        width:
                            10), // Ajusta el espacio entre el TextField y el botón según tu preferencia
                    ElevatedButton(
                      onPressed: () {
                        // Aquí puedes agregar la lógica para realizar la búsqueda
                        String searchText = controller.text;
                        print('Búsqueda realizada: $searchText');

                        final nextProductsReq = productsReq.rebuild(
                          (b) => b
                            ..vars.filterCriteria.filter.type = "or"
                            ..vars.filterCriteria.filter.filters.replace([
                              GIFilterCriterion((b) => b
                                ..property = "name"
                                ..type = "like"
                                ..value = searchText),
                              GIFilterCriterion((b) => b
                                ..property = "code"
                                ..type = "like"
                                ..value = searchText),
                            ])
                            ..fetchPolicy = FetchPolicy.NetworkOnly,
                        );
                        client.requestController.add(nextProductsReq);

                        // Aquí puedes realizar acciones como enviar la búsqueda a una API, actualizar el estado, etc.
                      },
                      child: Text('Buscar'),
                    ),
                  ],
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: PaginatedDataTable(
                        // controller: ScrollController(onAttach: (position) => print(position),),
                        showFirstLastButtons: true,
                        sortColumnIndex: _sortColumIndex,
                        sortAscending: _orderSort,
                        rowsPerPage: _pageSize,
                        onPageChanged: (newPage) {
                          _newPageIndex = newPage;
                          _currentPage = (newPage / _pageSize + 1).toInt();
                          refetchProductListPage();
                        },
                        onRowsPerPageChanged: (value) {
                          _pageSize = value ?? 10;
                          // _currentPage = 1;
                          refetchProductListPage();
                        },
                        columns: [
                          DataColumn(
                            label: Text(
                              "ID",
                              style: GoogleFonts.lobster(),
                            ),
                            onSort: _handleSort,
                          ),
                          DataColumn(
                            label: Text(
                              "Codigo",
                              style: GoogleFonts.lobster(),
                            ),
                            onSort: _handleSort,
                          ),
                          DataColumn(
                            label: Text(
                              "Nombre",
                              style: GoogleFonts.lobster(),
                            ),
                            onSort: _handleSort,
                          ),
                          DataColumn(
                            label: Text(
                              "Precio",
                              style: GoogleFonts.lobster(),
                            ),
                            onSort: _handleSort,
                          ),
                          DataColumn(
                              label: Text(
                            'Acciones',
                            style: GoogleFonts.lobster(),
                          ))
                        ],
                        source: MyData(
                            data: productListPage,
                            onEdit: (product) =>
                                {_showProductModal(context, product)},
                            onDelete: (productId) => {print(productId)})))
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showProductModal(context, null);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showProductModal(BuildContext context, product) {
    TextEditingController nameController =
        TextEditingController(text: product?.name);
    TextEditingController codeController =
        TextEditingController(text: product?.code);
    TextEditingController priceController =
        TextEditingController(text: product?.price?.toString());
    String title =
        '${product?.id != null ? "Edición" : "Creación"} de Producto';
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context)
                  .viewInsets
                  .bottom, // Asegura que el contenido no esté cubierto por el teclado
              left: 16.0,
              right: 16.0,
              top: 16.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16.0),
                _buildTextField('Nombre', 'name', nameController),
                const SizedBox(height: 16.0),
                _buildTextField('Código', 'code', codeController),
                const SizedBox(height: 16.0),
                _buildPriceField('Precio', 'price', priceController),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () async {
                    String name = nameController.text;
                    String code = codeController.text;
                    double price = double.tryParse(priceController.text) ?? 0.0;
                    if (product?.id == null) {
                      final createProductReq = GCreateProductReq((b) => b
                        ..vars.productInputDto.code = code
                        ..vars.productInputDto.name = name
                        ..vars.productInputDto.price = price);
                      final resultReq =
                          await client.request(createProductReq).first;
                      final productId = resultReq.data?.createProduct.id;
                      showToastSuccess("Se agrego el producto N°$productId");
                    } else {
                      final updateProductReq = GUpdateProductReq((b) => b
                        ..vars.productInputDto.code = code
                        ..vars.productInputDto.name = name
                        ..vars.productInputDto.price = price
                        ..vars.id = product.id);
                      final resultReq =
                          await client.request(updateProductReq).first;
                      final productId = resultReq.data?.updateProduct.id;
                      showToastSuccess("Se editó el producto N°$productId");
                    }
                    nameController.clear();
                    codeController.clear();
                    priceController.clear();
                    refetchProductListPage();
                    Navigator.pop(context); // Cierra el modal
                  },
                  child: const Text('Guardar Producto'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTextField(
      String label, String key, TextEditingController controller) {
    return TextField(
      decoration: InputDecoration(labelText: label),
      controller: controller,
      // Puedes utilizar controladores para obtener el valor del TextField
      // controller: _controllers[key],
    );
  }

  Widget _buildPriceField(
      String title, String key, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: title),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))
      ],
      // También puedes agregar un validador si es necesario
      // validator: (value) {
      //   if (value.isEmpty) {
      //     return 'Por favor, ingresa el precio';
      //   }
      //   return null;
      // },
    );
  }
}

class MyData extends DataTableSource {
  Function onEdit;
  Function onDelete;
  MyData({this.data, required this.onDelete, required this.onEdit});
  var data;
  @override
  DataRow? getRow(int index) {
    int pageIndex = index - _newPageIndex;
    final product = data.data[pageIndex];
    return DataRow(cells: [
      DataCell(Text(product.id)),
      DataCell(Text(product.code ?? "---")),
      DataCell(Text(product.name ?? "---")),
      DataCell(
          Text(product.price != null ? formatCurrency(product.price) : "0")),
      DataCell(Row(
        children: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () async => {onEdit(product)},
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () async {
              onDelete(product.id);
            },
          ),
        ],
      )),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data?.totalRecords ?? 0;

  @override
  int get selectedRowCount => 0;
}

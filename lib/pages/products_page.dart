import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_test/components/shared_scaffold.dart';
import 'package:graphql_test/graphql/__generated__/products.req.gql.dart';

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
  bool _orderSort = true;
  String _sortColumName = "id";

  final productsReq = GproductListPageReq(
    (b) => b
      ..requestId = 'MyReviewsReq'
      ..vars.filterCriteria.sort.column = "id"
      ..vars.filterCriteria.sort.order = "ASC"
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

              return SingleChildScrollView(
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
                      ],
                      source: MyData(data: productListPage)));
            },
          ),
        ));
  }
}

class MyData extends DataTableSource {
  MyData({this.data});
  var data;
  @override
  DataRow? getRow(int index) {
    int pageIndex = index - _newPageIndex;

    return DataRow(cells: [
      DataCell(Text(data.data[pageIndex].id)),
      DataCell(Text(data.data[pageIndex].code ?? "---")),
      DataCell(Text(data.data[pageIndex].name ?? "---")),
      DataCell(Text(data.data[pageIndex].price?.toString() ?? "0")),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => data?.totalRecords ?? 0;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}

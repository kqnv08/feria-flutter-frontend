import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_test/components/shared_scaffold.dart';
import 'package:graphql_test/graphql/__generated__/sales.req.gql.dart';
import 'package:graphql_test/utils/format_currency.dart';
import 'package:intl/intl.dart';

int _currentPage = 1;
int _pageSize = 10;
int _newPageIndex = 0;

class SaleListWidget extends StatefulWidget {
  const SaleListWidget({super.key, required this.title});
  final String title;

  @override
  State<SaleListWidget> createState() => SaleListWidgetState();
}

class SaleListWidgetState extends State<SaleListWidget> {
  final client = GetIt.I<Client>();

  int _sortColumIndex = 0;
  bool _orderSort = true;
  String _sortColumName = "id";

  final productsReq = GsaleListPageReq(
    (b) => b
      ..requestId = 'MyReviewsReq'
      ..vars.saleCriteria.sort.column = "id"
      ..vars.saleCriteria.sort.order = "ASC"
      ..vars.saleCriteria.page = 1
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
        columnName = 'createdAt';
        break;
      case 2:
        columnName = 'name';
        break;
      case 3:
        columnName = 'total';
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
        ..vars.saleCriteria.sort.column = _sortColumName
        ..vars.saleCriteria.sort.order = _orderSort ? "ASC" : "DESC"
        ..vars.saleCriteria.page = _currentPage
        ..vars.saleCriteria.limit = _pageSize,
    );
    client.requestController.add(nextReviewsReq);
  }

  @override
  Widget build(BuildContext context) {
    return SharedScaffold(
        key: const Key("sales"),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {context.go("/sale-form")},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        title: "Ventas",
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

              final productListPage = response!.data?.saleListPage;

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
                            "Fecha",
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
                            "Total",
                            style: GoogleFonts.lobster(),
                          ),
                          onSort: _handleSort,
                        ),
                        DataColumn(
                          label: Text(
                            "Acciones",
                            style: GoogleFonts.lobster(),
                          ),
                        ),
                      ],
                      source: MyData(data: productListPage, context: context)));
            },
          ),
        ));
  }
}

class MyData extends DataTableSource {
  final BuildContext context;
  MyData({this.data, required this.context});
  var data;
  @override
  DataRow? getRow(int index) {
    int pageIndex = index - _newPageIndex;
    final row = data.data[pageIndex];
    final formatedDate = DateFormat('dd-MM-yyyy HH:mm:ss')
        .format(DateTime.parse(row.createdAt.value));
    final rowId = row.id;
    return DataRow(cells: [
      DataCell(Text(row.id)),
      DataCell(Text(row.createdAt == null ? "---" : formatedDate)),
      DataCell(Text(row.name ?? "---")),
      DataCell(Text(row.total != 0 ? formatCurrency(row.total) : "0")),
      DataCell(Row(
        children: [
          IconButton(
            icon: const Icon(Icons.details),
            onPressed: () async => {context.go("/sale/$rowId")},
          ),
        ],
      ))
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data?.totalRecords ?? 0;

  @override
  int get selectedRowCount => 0;
}

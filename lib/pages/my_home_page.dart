import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_test/components/shared_scaffold.dart';
import 'package:graphql_test/graphql/__generated__/products.req.gql.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final productsReq = GproductFindAllReq(
    (b) => b..fetchPolicy = FetchPolicy.NetworkOnly,
  );
  final client = GetIt.I<Client>();

  @override
  Widget build(BuildContext context) {
    return SharedScaffold(
      title: "Bienvenido",
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/age.jpg', // Ruta de tu imagen local
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              '¡Bienvenido a mi aplicación!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go("/products");
              },
              child: Text('Empezar'),
            ),
          ],
        ),
      ),
    ));
  }
}

class MyData extends DataTableSource {
  MyData({this.data});
  var data;
  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(data[index].id)),
      DataCell(Text(data[index].code ?? "---")),
      DataCell(Text(data[index].name ?? "---")),
      DataCell(Text(data[index].price?.toString() ?? "0")),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}

import 'package:flutter/material.dart';
import 'package:graphql_test/graphql/graphql_client.dart';
import 'package:get_it/get_it.dart';
import 'package:ferry/ferry.dart';
import 'package:graphql_test/router.dart';

GetIt getIt = GetIt.instance;
void main() async {
  getIt.registerSingletonAsync<Client>(() => initClient());
  await getIt.getAsync<Client>();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Sistema de Stock',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
    );
  }
}

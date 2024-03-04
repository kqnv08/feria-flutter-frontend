import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_test/pages/my_home_page.dart';
import 'package:graphql_test/pages/products_page.dart';
import 'package:graphql_test/pages/sales_page.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage(title: 'Articulos');
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'products',
          builder: (BuildContext context, GoRouterState state) {
            return const MyDataTableWidget(title: "Productos",);
          },
        ),
        GoRoute(
          path: 'sales',
          builder: (BuildContext context, GoRouterState state) {
            return const SaleListWidget(title: "Ventas",);
          },
        ),
      ],
    ),
  ],
);

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_test/components/shared_scaffold.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                const SizedBox(height: 20),
                const Text(
                  '¡Bienvenido a mi aplicación!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.go("/products");
                  },
                  child: const Text('Empezar'),
                ),
              ],
            ),
          ),
        ));
  }
}

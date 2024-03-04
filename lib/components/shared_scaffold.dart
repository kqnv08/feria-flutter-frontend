import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SharedScaffold extends StatefulWidget {
  final Widget body;
  final String title;
  const SharedScaffold({super.key, required this.body,required this.title});

  @override
  State<StatefulWidget> createState() => SharedScaffoldState();
}

class SharedScaffoldState extends State<SharedScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              onTap: () => context.go('/products'),
              leading: const Icon(Icons.ad_units_outlined),
              title: const Text("Articulos"),
            ),
            ListTile(
              onTap: () => context.go('/sales'),
              leading: const Icon(Icons.store),
              title: const Text("Ventas"),
            ),
            ListTile(
              onTap: () => {context.go("/")},
              leading: const Icon(Icons.home),
              title: const Text("Inicio"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: widget.body,
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

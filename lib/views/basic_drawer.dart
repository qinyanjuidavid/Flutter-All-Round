import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.people),
                title: const Text("Item 1"),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.train),
                title: const Text("Item 2"),
              )
            ],
          ),
        ),
        endDrawer: Drawer(),
        appBar: AppBar(
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: const Icon(Icons.info),
          //   )
          // ],
          title: const Text(
            "Drawer",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        body: Container(),
      ),
    );
  }
}

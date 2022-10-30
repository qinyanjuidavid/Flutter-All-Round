import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatefulWidget {
  LayoutBuilderScreen({Key? key}) : super(key: key);

  @override
  State<LayoutBuilderScreen> createState() => _LayoutBuilderScreenState();
}

class _LayoutBuilderScreenState extends State<LayoutBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/");
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            "LayoutBuilder",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints sizes) {
          if (sizes.maxWidth < 500) {
            return const ListData();
          } else {
            return GridData();
          }
        }),
      ),
    );
  }
}

class ListData extends StatelessWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, id) {
        return ListTile(
          leading: const Icon(Icons.add),
          title: Text("Item $id"),
        );
      },
    );
  }
}

class GridData extends StatelessWidget {
  const GridData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
        100,
        (index) {
          return Center(
            child: ListTile(
              leading: const Icon(Icons.add_box),
              title: Text("Item $index"),
            ),
          );
        },
      ),
    );
  }
}

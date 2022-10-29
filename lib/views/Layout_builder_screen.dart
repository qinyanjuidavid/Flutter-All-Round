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

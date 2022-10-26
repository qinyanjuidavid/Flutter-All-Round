import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  final myList = List<int>.generate(100, (i) => i);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/");
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          title: const Text(
            "ListView",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return Text(
              "${myList[index]}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ),
    );
  }
}

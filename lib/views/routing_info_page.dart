import 'package:flutter/material.dart';
import 'package:pro1/views/routing_todo.dart';

class InfoPage extends StatefulWidget {
  final Todo item;
  InfoPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "navigate-todo/");
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: Text(
            widget.item.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.item.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              widget.item.description,
            ),
          ],
        ),
      ),
    );
  }
}

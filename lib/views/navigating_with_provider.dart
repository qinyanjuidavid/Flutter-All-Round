import 'dart:collection';

import 'package:flutter/material.dart';

class ProviderTodoScreen extends StatefulWidget {
  ProviderTodoScreen({Key? key}) : super(key: key);

  @override
  State<ProviderTodoScreen> createState() => _ProviderTodoScreenState();
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class TodoCache {
  var _index = -1;

  final List<Todo> _todos = [
    Todo("Item 1", "First to-do of the list"),
    Todo("Item 2", "Second to-do of the list"),
    Todo("Item 3", "Third to-do of the list"),
  ];
  void addItem(String title, String descr) {
    _todos.add(
      Todo(title, descr),
    );
  }

  int get index => _index;

  set index(int value) {
    if ((value >= 0) && (value < _todos.length)) {
      _index = value;
    } else {
      _index = -1;
    }
  }

  UnmodifiableListView<Todo> get list => UnmodifiableListView<Todo>(_todos);
}

class _ProviderTodoScreenState extends State<ProviderTodoScreen> {
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
            "Provider Navigation",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: Container(),
      ),
    );
  }
}

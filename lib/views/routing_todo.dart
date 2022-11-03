import 'package:flutter/material.dart';
import 'package:pro1/views/routing_info_page.dart';

class TodoScreen extends StatefulWidget {
  TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class _TodoScreenState extends State<TodoScreen> {
  final List<Todo> todos = [
    Todo("Item 1", "first to-do of the list"),
    Todo("Item 2", "second to-do of the list"),
    Todo("Item 3", "third to-do of the list"),
  ];

  void _itemPressed(BuildContext context, Todo item) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => InfoPage(
          item: item,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          title: const Text(
            "Todo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () => _itemPressed(
                context,
                todos[index],
              ),
              title: Text(
                todos[index].title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

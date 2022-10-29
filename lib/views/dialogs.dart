import 'package:flutter/material.dart';

class DialogScreen extends StatefulWidget {
  DialogScreen({Key? key}) : super(key: key);

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.restorablePopAndPushNamed(context, "/");
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            "Dialogs",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        body: Column(
          children: [
            MaterialButton(
              color: Colors.deepOrange,
              onPressed: () {
                showDialog(
                  context: context,
                  barrierColor: Colors.orange.withOpacity(0.4),
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Alert Dialog"),
                      content: const Text("Do you like this book?"),
                      actions: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "No",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Yes",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              child: const Text(
                "Click Me!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

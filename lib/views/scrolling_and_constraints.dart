import 'package:flutter/material.dart';

class ScrollingAndConstraintsScreen extends StatefulWidget {
  ScrollingAndConstraintsScreen({Key? key}) : super(key: key);

  @override
  State<ScrollingAndConstraintsScreen> createState() =>
      _ScrollingAndConstraintsScreenState();
}

class _ScrollingAndConstraintsScreenState
    extends State<ScrollingAndConstraintsScreen> {
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
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            "Scrolling",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        body: Column(
          children: [
            const Text(
              "My name:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const Text(
              "My surname:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: const [
                Text(
                  "Finit Height 1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  "Finit Height 2",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            Flexible(
              fit: FlexFit.tight,
              child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Text(
                    "Interests $index (flexible)",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  );
                },
              ),
            ),
            Container(
              constraints: const BoxConstraints.expand(
                height: 200,
              ),
              color: Colors.red,
              child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Text(
                    "box Constraint $index",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Text(
                    "Skill $index (expanded)",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  );
                },
              ),
            ),
            SizedBox.fromSize(
              size: const Size(1000, 100),
              child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Text(
                    "Sized Box $index",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

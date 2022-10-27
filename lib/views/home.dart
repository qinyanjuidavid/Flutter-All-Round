import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              "Basic Flutter Widgets",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, "text/");
                  },
                  child: const Center(
                    child: Text(
                      "Text",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, "rows/");
                  },
                  child: const Center(
                    child: Text(
                      "Rows",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "column/");
                  },
                  color: Colors.black,
                  child: const Center(
                    child: Text(
                      "Column",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, "listview/");
                  },
                  child: const Text(
                    "Listview",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, "containers/");
                  },
                  child: const Text(
                    "Containers",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, "stacked/");
                  },
                  child: const Text(
                    "Stack and Positioned",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.pushNamed(context, "stateless/");
                  },
                  child: const Text(
                    "Stateless Widget",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

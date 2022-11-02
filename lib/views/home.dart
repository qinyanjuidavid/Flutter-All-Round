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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 10,
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 10,
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 10,
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
                ),
                MaterialButton(
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.pushNamed(context, "statefull/");
                  },
                  child: const Text(
                    "Statefull Widget",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "drawer/");
                  },
                  color: Colors.grey,
                  child: const Text(
                    "Drawers",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "buttons/");
                  },
                  color: Colors.green,
                  child: const Text(
                    "Buttons",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "dialog/");
                  },
                  color: Colors.green,
                  child: const Text(
                    "Dialogs",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                MaterialButton(
                  color: Colors.green,
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "layoutbuilder/");
                  },
                  child: const Text(
                    "Layout Builder",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.pushNamed(context, "orientation/");
                  },
                  child: const Text(
                    "Orientation & MediaQuery",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.pushNamed(context, "scrolling/");
                  },
                  child: const Text(
                    "Scrolling And Constraints",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.orangeAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, "setstate/");
                  },
                  child: const Text(
                    "Set State",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "providercounter/");
                  },
                  child: const Text(
                    "Counter Provider",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "contacts/");
                  },
                  child: const Text(
                    "Provider Contact",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
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

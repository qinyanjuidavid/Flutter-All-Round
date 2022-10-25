import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({Key? key}) : super(key: key);

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
            "Rows",
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 32,
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.black,
                  child: const Text(
                    "Space",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  child: const Text(
                    "Around",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: const Text(
                    "!!!",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Space",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Between",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "!!!",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Space",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Evenly",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "!!!",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Main",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Center",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "!!!",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

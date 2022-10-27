import 'package:flutter/material.dart';

class StackedAndPositionScreen extends StatefulWidget {
  StackedAndPositionScreen({Key? key}) : super(key: key);

  @override
  State<StackedAndPositionScreen> createState() =>
      _StackedAndPositionScreenState();
}

class _StackedAndPositionScreenState extends State<StackedAndPositionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            "Stacked and Positioned",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                ),
                const Text(
                  "Hello Friend",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                const Text(
                  "Hello",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                ),
                const Positioned(
                  top: 200,
                  left: 105,
                  child: Text(
                    "Positioned Text",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
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

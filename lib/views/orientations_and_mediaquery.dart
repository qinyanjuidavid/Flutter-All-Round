import 'package:flutter/material.dart';

class OrientationAndMediaQueryScreen extends StatefulWidget {
  OrientationAndMediaQueryScreen({Key? key}) : super(key: key);

  @override
  State<OrientationAndMediaQueryScreen> createState() =>
      _OrientationAndMediaQueryScreenState();
}

class _OrientationAndMediaQueryScreenState
    extends State<OrientationAndMediaQueryScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final orientation = MediaQuery.of(context).orientation;
    if ((orientation != null) && (orientation == Orientation.portrait)) {
      print(orientation);
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            "Orientation",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        body: Column(
          children: [
            Text(
              "Width: $width",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

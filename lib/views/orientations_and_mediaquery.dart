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
            onPressed: () {
              Navigator.popAndPushNamed(context, "/");
            },
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
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Width: $width",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Text(
                    "${constraints.maxWidth}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
            OrientationBuilder(builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return const Text(
                  "Portrait",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              } else {
                return const Text(
                  "Different orientation",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }
            })
          ],
        ),
      ),
    );
  }
}

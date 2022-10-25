import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  TextScreen({Key? key}) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
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
              size: 28,
            ),
          ),
          title: const Text(
            "Texts",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: const [
              Text(
                "Text on the screen",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  wordSpacing: 3,
                ),
              ),
              Text(
                "Text with Font",
                style: TextStyle(
                  fontFamily: "RobotoThinItalic",
                  fontSize: 30,
                ),
              ),
              Text(
                "Text with Some Different Fonts",
                style: TextStyle(
                  fontFamily: "RobotoLight",
                  fontSize: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

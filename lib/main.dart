import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FreeMob",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Text On the screen",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 24,
              wordSpacing: 4,
            ),
          ),
        ],
      ),
    );
  }
}

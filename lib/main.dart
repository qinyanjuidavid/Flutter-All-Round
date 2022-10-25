import 'package:flutter/material.dart';
import 'package:pro1/configs/routes.dart';
import 'package:pro1/services/navigation_services.dart';

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
      initialRoute: "/",
      routes: appRoutes,
      navigatorKey: Navigate.instance.navigationKey,
    );
  }
}

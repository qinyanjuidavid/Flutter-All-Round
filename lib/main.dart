import 'package:flutter/material.dart';
import 'package:pro1/configs/routes.dart';
import 'package:pro1/controllers/counter_model.dart';
import 'package:pro1/services/navigation_services.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterModel(),
        ),
      ],
      child: MaterialApp(
        title: "FreeMob",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          // fontFamily: "Roboto",
          brightness: Brightness.light,
          focusColor: Colors.black,
          primaryColor: Colors.amber,
        ),
        initialRoute: "/",
        routes: appRoutes,
        navigatorKey: Navigate.instance.navigationKey,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pro1/configs/routing.dart';

class RoutingHomePage extends StatelessWidget {
  const RoutingHomePage({Key? key}) : super(key: key);

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
            "Routing",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pushNamed(RouteGenerator.randomPage);
              Navigator.pushNamed(context, "random/");
            },
            child: const Text(
              "Random Page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

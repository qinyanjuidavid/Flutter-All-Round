import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro1/views/random_routing_screen.dart';
import 'package:pro1/views/routing_and_navigation.dart';

class RouteGenerator {
  static const String homePage = "home/";
  static const String randomPage = "/random";

  RouteGenerator._() {}

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const RoutingHomePage(),
        );
      case randomPage:
        return MaterialPageRoute(
          builder: (_) => const RandomPage(),
        );
      default:
        throw FormatException("Route not found");
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CounterModel with ChangeNotifier {
  int _counter = 0;

  void increment() {
    _counter++;
    print(_counter);
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  int get currentCount => _counter;
}

class Something {
  final description = "something is better than nothing";
  final descriptionCache = {};
}

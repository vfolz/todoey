import 'package:flutter/cupertino.dart';

class Task with ChangeNotifier {
  final String name;
  bool isDone;

  Task({this.isDone = false, this.name});

  void toggleDone() {
    isDone = !isDone;
    notifyListeners();
  }
}

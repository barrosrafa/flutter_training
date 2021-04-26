import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  int counter = 0;
  bool isDartTheme = false;

  changeTheme() {
    isDartTheme = !isDartTheme;
    notifyListeners();
  }

  changeCount() {
    counter++;
    notifyListeners();
  }
}

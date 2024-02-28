import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {

  ThemeMode themeMode = ThemeMode.system;

  ThemeProvider();

  void changeTheme(bool isBright) {
    if(isBright) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }
    notifyListeners();
  }
}
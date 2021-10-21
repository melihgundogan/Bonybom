// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  bool get isDarkMode => themeMode == ThemeData.dark();
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromRGBO(27, 27, 27, 1),
    colorScheme: ColorScheme.dark(),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
  );
}

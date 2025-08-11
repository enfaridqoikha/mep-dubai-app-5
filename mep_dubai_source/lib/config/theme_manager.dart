import 'package:flutter/material.dart';
class ThemeManager {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(elevation: 2),
    );
  }
  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Color(0xFF0B1321),
      appBarTheme: AppBarTheme(elevation: 2),
    );
  }
}

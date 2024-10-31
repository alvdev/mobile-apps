import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static TextTheme text = TextTheme(
    displaySmall: TextStyle(fontSize: 12),
    displayMedium: TextStyle(fontSize: 24),
    displayLarge: TextStyle(fontSize: 36),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Consolas',
    primaryColor: Colors.teal,
  );
}

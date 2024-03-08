import 'package:flutter/material.dart';

const List colors = <Color>[
  Colors.red,
  Colors.purple,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor < colors.length,
            'Selected color must be less than ${colors.length - 1}');

  ThemeData getTheme() => ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: colors[selectedColor],
        appBarTheme: const AppBarTheme(centerTitle: true),
      );
}

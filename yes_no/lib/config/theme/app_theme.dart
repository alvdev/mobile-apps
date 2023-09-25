import 'package:flutter/material.dart';

const _customColor = Color.fromARGB(255, 146, 14, 228);
const List colors = [
  _customColor,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.teal,
];

class AppTheme {
  final int globalColor;

  const AppTheme({required this.globalColor})
      : assert(globalColor >= 0 && globalColor < colors.length,
            'Colors must be between 0 and ${colors.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colors[globalColor],
    );
  }
}

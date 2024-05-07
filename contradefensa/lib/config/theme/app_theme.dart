import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(
          background: Color(0xFF15171a),
        ),
      );
}

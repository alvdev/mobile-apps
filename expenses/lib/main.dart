import 'package:flutter/material.dart';

import 'package:expenses/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(228, 79, 189, 100),
);


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.secondaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
              titleMedium: TextStyle(
                  fontSize: 18, color: kColorScheme.onPrimaryContainer),
            ),
      ),
      home: const Expenses(),
    ),
  );
}

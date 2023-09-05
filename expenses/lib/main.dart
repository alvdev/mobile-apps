import 'package:flutter/material.dart';

import 'package:expenses/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(228, 79, 189, 100),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromRGBO(100, 100, 100, 10),
);


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      darkTheme: ThemeData()
          .copyWith(useMaterial3: true, colorScheme: kDarkColorScheme),

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
      themeMode: ThemeMode.dark,
      home: const Expenses(),
    ),
  );
}

import 'package:flutter/material.dart';

import 'package:meals/meals.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
      title: 'Meals',
      home: const Meals(),
    ),
  );
}

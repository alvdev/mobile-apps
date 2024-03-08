import 'package:flutter/material.dart';
import 'package:widgets/config/theme/theme_data.dart';
import 'package:widgets/presentation/screeens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
      home: const HomeScreen(),
    );
  }
}

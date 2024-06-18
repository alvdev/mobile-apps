import 'package:flutter/material.dart';
import 'package:recipes/widgets/recipes_card_list_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes app',
      theme: theme.copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Recipes'.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.green,
          ),
          body: const RecipeCardListWidget(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:recipes/recipes.dart';

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
          body: ListView.builder(
            itemCount: Recipe.recipes.length,
            itemBuilder: (context, index) {
              return Card(
                child: Row(
                  children: [
                    Image.network(
                      Recipe.recipes[index].imgUrl,
                      height: 100,
                    ),
                    Text(Recipe.recipes[index].name),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

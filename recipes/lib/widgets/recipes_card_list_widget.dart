import 'package:flutter/material.dart';
import 'package:recipes/recipes.dart';

class RecipeCardListWidget extends StatelessWidget {
  const RecipeCardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:recipes/recipes.dart';

class RecipeCardListWidget extends StatelessWidget {
  const RecipeCardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Recipe.recipes.length,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              child: Row(
                children: [
                  Image.network(
                    Recipe.recipes[index].imgUrl,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      Recipe.recipes[index].name,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

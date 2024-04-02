import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoriesScreen extends StatelessWidget {
  static const name = 'categories_screen';
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'),
      ),
      floatingActionButton: ElevatedButton(
          child: const Text('Back'),
          onPressed: () {
            context.pop();
          }),
      body: _categoriesView(),
    );
  }

  _categoriesView() {
    return const Placeholder();
  }
}

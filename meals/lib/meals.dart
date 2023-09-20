import 'package:flutter/material.dart';

import 'package:meals/widgets/category_items.dart';

class Meals extends StatelessWidget {
  const Meals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals home page'),
      ),
      body: const CategoryItems(),
    );
  }
}

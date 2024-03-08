import 'package:flutter/material.dart';
import 'package:widgets/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return ListView.builder(
      itemCount: menuItemList.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(menuItemList[index].icon, size: 32, color: color.primary),
        title: Text(menuItemList[index].title),
        subtitle: Text(menuItemList[index].subtitle),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () => {
          // TODO: Add navigation
        },
      ),
    );
  }
}

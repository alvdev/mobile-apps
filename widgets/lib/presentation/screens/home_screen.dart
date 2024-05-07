import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';

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
      itemBuilder: (context, index) {
        // No named route
        // final menuItem = menuItemList[index];

        return ListTile(
          leading:
              Icon(menuItemList[index].icon, size: 32, color: color.primary),
          title: Text(menuItemList[index].title),
          subtitle: Text(menuItemList[index].subtitle),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            // No named route
            // context.push(menuItemList[index].link);
            context.pushNamed(menuItemList[index].name);
          },
        );
      },
    );
  }
}

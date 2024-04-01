import 'package:flutter/material.dart';
import 'package:widgets/presentation/screens.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final String name;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.name,
      required this.icon});
}

const List<MenuItem> menuItemList = [
  MenuItem(
    title: 'Home',
    subtitle: 'Home screen',
    link: '/home',
    name: HomeScreen.name,
    icon: Icons.home,
  ),
  MenuItem(
    title: 'Settings',
    subtitle: 'Settings screen',
    link: '/settings',
    name: SettingsScreen.name,
    icon: Icons.settings,
  ),
  MenuItem(
    title: 'Categories',
    subtitle: 'Categories screen',
    link: '/categories',
    name: CategoriesScreen.name,
    icon: Icons.category,
  )
];

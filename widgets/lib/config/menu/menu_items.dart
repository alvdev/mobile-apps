import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const menuItems = <MenuItem>[
  MenuItem(
      title: 'Home', subtitle: 'Home screen', link: '/home', icon: Icons.home),
  MenuItem(
      title: 'Settings',
      subtitle: 'Settings screen',
      link: '/settings',
      icon: Icons.settings),
];

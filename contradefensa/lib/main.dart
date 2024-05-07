import 'package:flutter/material.dart';
import 'package:contradefensa/config/theme/app_theme.dart';
import 'package:contradefensa/config/router/app_router.dart';

void main() {
  runApp(const Contra());
}

class Contra extends StatelessWidget {
  const Contra({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Contradefensa',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}

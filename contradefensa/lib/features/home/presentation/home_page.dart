import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:contradefensa/utils/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.home),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => context.go('/login'),
            child: Text(context.l10n.login)),
      ),
    );
  }
}

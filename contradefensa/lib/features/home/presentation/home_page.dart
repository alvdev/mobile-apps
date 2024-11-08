import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:contradefensa/config/theme/theme.dart';
import 'package:contradefensa/utils/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage('assets/images/hacker-matrix.webp'),
            fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              context.l10n.home,
              style: AppTheme.text.displayMedium,
            ),
          ),
          body: Center(
            child: ElevatedButton(
              child: Text(context.l10n.login),
              onPressed: () => context.go('/login'),
            ),
          ),
        ),
      ),
    );
  } 
}

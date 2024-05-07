import 'package:flutter/material.dart';
import 'package:contradefensa/config/theme/app_theme.dart';

void main() {
  runApp(const Contra());
}

class Contra extends StatelessWidget {
  const Contra({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contradefensa',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contradefensa'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Contradefensa'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:widgets/config/theme/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Widgets App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).getTheme(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Widgets App'),
            backgroundColor: Colors.teal,
            centerTitle: true,
          ),
          body: Center(
            child:
                FilledButton(onPressed: () {}, child: const Text('Click me!')),
          ),
        ));
  }
}

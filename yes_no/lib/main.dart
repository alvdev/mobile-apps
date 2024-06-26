import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yes_no/config/theme/app_theme.dart';
import 'package:yes_no/presentation/screens/chat_screen.dart';
import 'package:yes_no/presentation/providers/chat_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(globalColor: 5).theme(),
        home: const ChatScreen(),
        /* Scaffold(
          body: Center(
            child: FilledButton(
              child: const Text('Click me!'),
              onPressed: () {},
            ),
          ),
        ), */
      ),
    );
  }
}

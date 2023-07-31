import 'package:flutter/material.dart';

import 'package:quiz/questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(83, 1, 152, 1),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 300,
            ),
            const SizedBox(height: 60),
            const Text(
              'Quiz demo text',
              style: TextStyle(
                  fontSize: 30, color: Color.fromRGBO(255, 255, 255, .6)),
            ),
            const SizedBox(height: 60),
            FilledButton.icon(
                icon: const Icon(Icons.play_arrow),
                onPressed: () {},
                label: const Text('Start Quiz')),
          ],
        ),
      ),
    );
  }
}

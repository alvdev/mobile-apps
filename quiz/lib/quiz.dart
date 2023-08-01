import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  Widget activeScreen = const QuizScreen();

  void switchScreen() {
    setState(() {
      activeScreen = const QuizScreen();
    });
  }

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
            const Text(
              'demo text',
              style: TextStyle(
                  fontSize: 30, color: Color.fromRGBO(255, 255, 255, .6)),
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Start Quiz')),
          ],
        ),
      ),
    );
  }
}

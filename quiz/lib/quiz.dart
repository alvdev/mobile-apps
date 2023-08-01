import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = const Quiz();

  void switchScreen() {
    setState(() {
      activeScreen = const Quiz();
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

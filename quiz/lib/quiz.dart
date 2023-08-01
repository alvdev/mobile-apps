import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  Widget activeScreen = const QuestionsScreen();

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
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

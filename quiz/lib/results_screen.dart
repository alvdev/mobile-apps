import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenQuestions});

  final List<String> chosenQuestions;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Your answered questions'),
            const SizedBox(height: 30),
            const Text('List of answers and questions'),
            TextButton(
              onPressed: () {},
              child: const Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }
}

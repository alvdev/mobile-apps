import 'package:flutter/material.dart';

import 'package:quiz/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenQuestions});

  final List<String> chosenQuestions;

  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenQuestions.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': chosenQuestions[i],
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenQuestions[i],
        },
      );
    }

    return summary;
  }

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

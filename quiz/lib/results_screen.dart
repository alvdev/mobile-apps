import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:quiz/data/questions.dart';
import 'package:quiz/summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenQuestions});
  final List<String> chosenQuestions;

  List<Map<String, Object>> get summary {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenQuestions.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].question,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenQuestions[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalQuestions = questions.length;
    final totalCorrect = summary
        .where((data) => data['correct_answer'] == data['user_answer'])
        .length;

    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                'Your answered $totalCorrect of $totalQuestions questions correctly'),
            const SizedBox(height: 50),
            Summary(summary),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {},
              child: const Text('Restart quiz'),
            ),
          ],
        ),
      ),
    );
  }
}

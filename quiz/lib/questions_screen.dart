import 'package:flutter/material.dart';

import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
                  (item) => AnswerButton(
                    answer: item,
                    onTap: () {},
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

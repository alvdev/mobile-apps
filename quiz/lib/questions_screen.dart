import 'package:flutter/material.dart';

import 'package:quiz/answer_button.dart';

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Questions Screen'),
          const SizedBox(height: 30),
          AnswerButton(answer: 'Answer 1', onTap: () {}),
          AnswerButton(answer: 'Answer 2', onTap: () {}),
          AnswerButton(answer: 'Answer 3', onTap: () {}),
        ],
      ),
    );
  }
}

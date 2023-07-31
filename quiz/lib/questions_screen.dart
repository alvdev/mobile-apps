import 'package:flutter/material.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(83, 1, 152, 1),
        ),
        child: const Center(
          child: Text(
            'demo text',
            style: TextStyle(
                fontSize: 30, color: Color.fromRGBO(255, 255, 255, .6)),
          ),
        ));
  }
}

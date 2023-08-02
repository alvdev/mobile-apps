import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answer, required this.onTap});

  final String answer;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
      child: Text(answer),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:quiz/questions_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: QuestionsScreen(),
      ),
    ),
  );
}

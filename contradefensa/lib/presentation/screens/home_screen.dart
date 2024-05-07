import 'package:flutter/material.dart';
import 'package:contradefensa/config/constants/environment.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Environment.quizApiKey),
      ),
    );
  }
}

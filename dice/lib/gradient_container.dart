import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.lightGreen],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text(
          'Demo text',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 48),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:dice/styled_text.dart';

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
        child: StyledText(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:dice/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  void rollDice() {
    print('Button clicked!');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [...colors],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 50),
            TextButton(
              onPressed: rollDice,
              child: const StyledText('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}

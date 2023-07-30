import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [...colors],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

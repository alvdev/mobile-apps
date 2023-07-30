import 'package:flutter/material.dart';
import 'dart:math';

import 'package:dice/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-${Random().nextInt(6) + 1}.png';
  void rollDice() {
    setState(() {
      var diceNum = Random().nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$diceNum.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 50),
        TextButton(
          onPressed: rollDice,
          child: const StyledText('Roll Dice'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MyBubbleMessage extends StatelessWidget {
  const MyBubbleMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FractionallySizedBox(
          widthFactor: 0.75,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: color.primary.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
                'Ullamco id velit aliquip quis duis ipsum ex ea nostrud eu proident ex tempor laborum'),
          ),
        ),
      ],
    );
  }
}

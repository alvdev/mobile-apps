import 'package:flutter/material.dart';
import 'package:yes_no/domain/entities/message_entity.dart';

class MyBubbleMessage extends StatelessWidget {
  final Message message;
  const MyBubbleMessage({super.key, required this.message});

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
            child: Text(message.message),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'my_bubble_message.dart';
import 'her_bubble_message.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => index % 2 == 0
                  ? const HerBubbleMessage()
                  : const MyBubbleMessage(),
            ),
          ),
          const Text('Chat Screen'),
        ],
      ),
    );
  }
}

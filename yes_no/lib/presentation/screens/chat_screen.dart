import 'package:flutter/material.dart';

import '../widgets/chat/chat_messages.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        ),
        title: const Text('Chat Screen'),
        centerTitle: true,
      ),
      body: const ChatMessages(),
    );
  }
}

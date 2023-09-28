import 'package:flutter/material.dart';

import 'package:yes_no/domain/entities/message_entity.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();

  List<Message> messages = [
    Message(message: 'Hello', fromWho: FromWho.me),
    Message(message: 'Hi', fromWho: FromWho.him),
  ];

  Future<void> sendMessage(String message) async {
    if (message.isEmpty) return;

    final newMessage = Message(message: message, fromWho: FromWho.me);
    messages.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 200));

    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }
}

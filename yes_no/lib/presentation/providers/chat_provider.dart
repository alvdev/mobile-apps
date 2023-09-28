import 'package:flutter/material.dart';

import 'package:yes_no/domain/entities/message_entity.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(message: 'Hello', fromWho: FromWho.me),
    Message(message: 'Hi', fromWho: FromWho.him),
  ];

  Future<void> sendMessage(String message) async {
    final newMessage = Message(message: message, fromWho: FromWho.me);
    messages.add(newMessage);

    notifyListeners();
  }
}

import 'package:flutter/material.dart';

import 'package:yes_no/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no/domain/entities/message_entity.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final getHimResponse = GetYesNoAnswer();

  List<Message> messages = [];

  Future<void> sendMessage(String message) async {
    if (message.isEmpty) return;

    final newMessage = Message(message: message, fromWho: FromWho.me);
    messages.add(newMessage);

    if (message.endsWith('?')) await himReply(message);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> himReply(message) async {
    final himMessage = await getHimResponse.getAnswer();
    messages.add(himMessage);
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

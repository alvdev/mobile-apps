import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no/domain/entities/message_entity.dart';

import 'my_bubble_message.dart';
import 'him_bubble_message.dart';

import '../../providers/chat_provider.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messages[index];

                  return message.fromWho == FromWho.me
                      ? const MyBubbleMessage()
                      : const HimBubbleMessage();
                }),
          ),
          const MessageField(),
        ],
      ),
    );
  }
}

class MessageField extends StatelessWidget {
  const MessageField({super.key});

  @override
  Widget build(BuildContext context) {
    final inputTextController = TextEditingController();
    final inputFocus = FocusNode();

    return TextFormField(
      controller: inputTextController,
      focusNode: inputFocus,
      onTapOutside: (event) => inputFocus.unfocus(),
      onFieldSubmitted: (value) {
        print('Valor: ${inputTextController.value.text}');
        inputTextController.clear();
        inputFocus.requestFocus();
      },
      decoration: InputDecoration(
        hintText: 'Enter your message',
        contentPadding: const EdgeInsets.all(20),
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final text = inputTextController.value.text;
            print(text);
            inputTextController.clear();
          },
        ),
      ),
    );
  }
}

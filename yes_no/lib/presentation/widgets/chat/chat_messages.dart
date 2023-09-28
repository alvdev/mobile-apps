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
                  final text = chatProvider.messages[index];

                  return text.fromWho == FromWho.me
                      ? MyBubbleMessage(message: text)
                      : HimBubbleMessage(
                          message: text,
                        );
                }),
          ),
          MessageField(
            // onValue: (value) => chatProvider.sendMessage(value),
            onValue: chatProvider
                .sendMessage, // Same line as above but shorter when value is the same
          ),
        ],
      ),
    );
  }
}

class MessageField extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageField({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final inputTextController = TextEditingController();
    final inputFocus = FocusNode();

    return TextFormField(
      controller: inputTextController,
      focusNode: inputFocus,
      onTapOutside: (event) => inputFocus.unfocus(),
      onFieldSubmitted: (value) {
        inputTextController.clear();
        inputFocus.requestFocus();
        onValue(value);
      },
      decoration: InputDecoration(
        hintText: 'Enter your message ending with ?',
        contentPadding: const EdgeInsets.all(20),
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final text = inputTextController.value.text;
            inputTextController.clear();
            onValue(text);
          },
        ),
      ),
    );
  }
}

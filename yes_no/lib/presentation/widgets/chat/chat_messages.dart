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
          MessageField(),
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

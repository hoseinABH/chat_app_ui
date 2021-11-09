import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/ChatMessage.dart';
import 'package:chat_app_ui/screens/messages/components/chat_input_field.dart';
import 'package:chat_app_ui/screens/messages/components/message.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
              child: ListView.builder(
                  itemCount: demeChatMessages.length,
                  itemBuilder: (ctx, index) {
                    return Message(message: demeChatMessages[index]);
                  })),
        ),
        const ChatInputField()
      ],
    );
  }
}

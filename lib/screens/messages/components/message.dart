import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/ChatMessage.dart';
import 'package:chat_app_ui/screens/messages/components/text_message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final ChatMessage message;
  const Message({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: cDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            const SizedBox(
              width: cDefaultPadding / 2,
            )
          ],
          TextMessage(
            message: message,
          )
        ],
      ),
    );
  }
}

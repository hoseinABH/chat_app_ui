import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/ChatMessage.dart';
import 'package:chat_app_ui/screens/messages/components/audio_message.dart';
import 'package:chat_app_ui/screens/messages/components/text_message.dart';
import 'package:chat_app_ui/screens/messages/components/video_message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final ChatMessage message;
  const Message({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(
            message: message,
          );
        case ChatMessageType.audio:
          return AutdioMessage(
            message: message,
          );
        case ChatMessageType.video:
          return VideoMessage(
            message: message,
          );
        default:
          return const SizedBox();
      }
    }

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
            ),
          ],
          messageContaint(message)
        ],
      ),
    );
  }
}

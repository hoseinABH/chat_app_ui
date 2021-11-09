import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/ChatMessage.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  final ChatMessage message;
  const TextMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: cDefaultPadding),
        padding: const EdgeInsets.symmetric(
            horizontal: cDefaultPadding * 0.75, vertical: cDefaultPadding / 2),
        decoration: BoxDecoration(
            color: cPrimaryColor.withOpacity(message.isSender ? 1 : 0.08),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          message.text,
          style: TextStyle(
              color: message.isSender
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText1!.color),
        ));
  }
}

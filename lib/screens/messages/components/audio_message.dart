import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/ChatMessage.dart';
import 'package:flutter/material.dart';

class AutdioMessage extends StatelessWidget {
  final ChatMessage message;

  const AutdioMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.55,
      padding: const EdgeInsets.symmetric(
          horizontal: cDefaultPadding * 0.74, vertical: cDefaultPadding / 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: cPrimaryColor.withOpacity(message.isSender ? 1 : 0.08)),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? Colors.white : cPrimaryColor,
          ),
          Expanded(
              child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: cDefaultPadding / 2),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  width: double.infinity,
                  height: 2,
                  color: message.isSender
                      ? Colors.white
                      : cPrimaryColor.withOpacity(0.4),
                ),
                Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: message.isSender ? Colors.white : cPrimaryColor,
                      shape: BoxShape.circle),
                )
              ],
            ),
          )),
          Text(
            "0.37",
            style: TextStyle(
                fontSize: 12, color: message.isSender ? Colors.white : null),
          )
        ],
      ),
    );
  }
}

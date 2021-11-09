import 'package:chat_app_ui/constants.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 32,
                color: Color(0xFF087949).withOpacity(0.08))
          ]),
      padding: const EdgeInsets.symmetric(
          horizontal: cDefaultPadding, vertical: cDefaultPadding / 2),
      child: SafeArea(
          child: Row(
        children: [
          const Icon(
            Icons.mic,
            color: cPrimaryColor,
          ),
          const SizedBox(
            width: cDefaultPadding,
          ),
          Expanded(
              child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: cDefaultPadding * 0.75),
            decoration: BoxDecoration(
              color: cPrimaryColor.withOpacity(0.05),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.sentiment_satisfied_alt_outlined,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.64),
                ),
                const SizedBox(
                  width: cDefaultPadding / 4,
                ),
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Type message", border: InputBorder.none),
                )),
                Icon(
                  Icons.attach_file,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.64),
                ),
                const SizedBox(
                  width: cDefaultPadding / 4,
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.64),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}

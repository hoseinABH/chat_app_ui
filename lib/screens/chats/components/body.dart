import 'package:chat_app_ui/components/filled_outline_button.dart';
import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/Chat.dart';
import 'package:chat_app_ui/screens/chats/components/chat_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              cDefaultPadding, 0, cDefaultPadding, cDefaultPadding),
          color: cPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              const SizedBox(
                width: cDefaultPadding,
              ),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              )
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (ctx, index) {
                  return ChatCard(
                    chat: chatsData[index],
                    press: () {},
                  );
                }))
      ],
    );
  }
}

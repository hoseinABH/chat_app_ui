import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/Chat.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final Chat chat;
  const ChatCard({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: cDefaultPadding, vertical: cDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(chat.image),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          color: cPrimaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              width: 3)),
                    ))
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Opacity(
                    opacity: 0.64,
                    child: Text(
                      chat.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )),
            Opacity(
              opacity: 0.64,
              child: Text(chat.time),
            )
          ],
        ));
  }
}

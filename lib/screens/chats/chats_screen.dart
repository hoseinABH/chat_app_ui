import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/screens/chats/components/body.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: const Text(
      "Chats",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    automaticallyImplyLeading: false,
    backgroundColor: cPrimaryColor,
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
  );
}

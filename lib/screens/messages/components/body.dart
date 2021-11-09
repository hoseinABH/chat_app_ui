import 'package:chat_app_ui/screens/messages/components/chat_input_field.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Spacer(), ChatInputField()],
    );
  }
}

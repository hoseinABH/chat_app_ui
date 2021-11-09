import 'package:chat_app_ui/components/primary_button.dart';
import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class SigninOrSignUpScreen extends StatelessWidget {
  const SigninOrSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? 'assets/images/Logo_light.png'
                  : 'assets/images/Logo_dark.png',
              height: 146,
            ),
            const Spacer(),
            PrimaryButton(
                text: "Sign In",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatScreen()));
                }),
            const SizedBox(
              height: cDefaultPadding,
            ),
            PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () {}),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      )),
    );
  }
}

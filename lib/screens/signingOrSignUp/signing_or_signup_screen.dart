import 'package:chat_app_ui/components/primary_button.dart';
import 'package:flutter/material.dart';

class SigninOrSignUpScreen extends StatelessWidget {
  const SigninOrSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            'assets/images/Logo_light.png',
            height: 146,
          ),
          PrimaryButton(text: "Sign In", press: () {})
        ],
      )),
    );
  }
}

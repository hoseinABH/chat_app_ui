import 'package:chat_app_ui/constants.dart';
import 'package:chat_app_ui/models/ChatMessage.dart';
import 'package:flutter/material.dart';

class VideoMessage extends StatelessWidget {
  final ChatMessage message;
  const VideoMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.45,
        child: AspectRatio(
          aspectRatio: 1.6,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset("assets/images/Video Place Here.png"),
              ),
              Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                    color: cPrimaryColor, shape: BoxShape.circle),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}

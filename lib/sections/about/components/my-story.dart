import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyStory extends StatelessWidget {
  MyStory({
    Key? key,
  }) : super(key: key);

  final Uri flutterUrl = Uri.parse('https://flutter.dev');
  final Uri googleUrl = Uri.parse('https://www.google.com');

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text:
            "My early exposure to computers, phones, mp3 player and ninetendos together with my curiosity led me into tech. Growing up, I always wanted to know more about my sorrounding especially the electronics, so I found myself hanging around video games, tech magazines, and like friends. One of the best decisions I made during my undergraduate program is picking up google's",
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
              text: " Flutter ",
              style: TextStyle(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  if (await canLaunchUrl(flutterUrl)) {
                    await launchUrl(flutterUrl);
                  } else {
                    throw 'Could not launch $flutterUrl';
                  }
                },
              children: []),
          TextSpan(
              text:
                  "to write my class tasks and also personal projects. Ever since, I've never looked back but to... "),
          TextSpan(
              text: "read more",
              recognizer: TapGestureRecognizer(),
              style: TextStyle(
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}

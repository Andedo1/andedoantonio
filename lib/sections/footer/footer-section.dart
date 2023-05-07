import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  FooterSection({Key? key}) : super(key: key);

  final Facebook_url = Uri.parse("https://www.facebook.com/andedoantonio");
  final Twitter_url = Uri.parse("https://twitter.com/8_drey");
  final Insta_url = Uri.parse("https://www.instagram.com/andedoantonio/");
  final LinkedIn_url = Uri.parse("https://www.linkedin.com/in/andedoantonio");
  final Github_url = Uri.parse("https://github.com/Andedo1");
  final SourceCode_url = Uri.parse("https://github.com/Andedo1/andedoantonio");

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Follow Me",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                splashRadius: 30,
                onPressed: () async {
                  if (await canLaunchUrl(Facebook_url)) {
                    await launchUrl(Facebook_url);
                  } else {
                    throw 'Error';
                  }
                },
                icon: FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue.withOpacity(0.8),
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              IconButton(
                splashRadius: 30,
                onPressed: () async {
                  if (await canLaunchUrl(LinkedIn_url)) {
                    await launchUrl(LinkedIn_url);
                  } else {
                    throw 'Error';
                  }
                },
                icon: FaIcon(
                  FontAwesomeIcons.linkedin,
                  size: 30,
                  color: Colors.blue.withOpacity(0.8),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              IconButton(
                splashRadius: 30,
                onPressed: () async {
                  if (await canLaunchUrl(Twitter_url)) {
                    await launchUrl(Twitter_url);
                  } else {
                    throw 'Error';
                  }
                },
                icon: FaIcon(
                  FontAwesomeIcons.twitter,
                  size: 30,
                  color: Colors.blue.withOpacity(0.8),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              IconButton(
                splashRadius: 30,
                onPressed: () async {
                  if (await canLaunchUrl(Insta_url)) {
                    await launchUrl(Insta_url);
                  } else {
                    throw 'Error';
                  }
                },
                icon: FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 30,
                  color: Colors.blue.withOpacity(0.8),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              IconButton(
                splashRadius: 30,
                onPressed: () async {
                  if (await canLaunchUrl(Github_url)) {
                    await launchUrl(Github_url);
                  } else {
                    throw 'Error';
                  }
                },
                icon: FaIcon(
                  FontAwesomeIcons.github,
                  size: 30,
                  color: Colors.blue.withOpacity(0.8),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
              text: "Designed and Built by",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              children: [
                TextSpan(
                    text: " Antonio Andedo",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600))
              ],
            ),
          ),
          Text(
            "Copyright 2019-2023 MIT License",
            style: TextStyle(color: Colors.black),
          ),
          RichText(
            text: TextSpan(
              text: " source code repo",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 12,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  if (await canLaunchUrl(SourceCode_url)) {
                    await launchUrl(SourceCode_url);
                  } else {
                    throw 'Error';
                  }
                },
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}

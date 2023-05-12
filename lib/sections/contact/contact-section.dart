import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({Key? key, required this.scaffoldKey}) : super(key: key);

  final scaffoldKey;
  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    final String email = 'antonnio_andedo@yahoo.com';
    return Container(
      //padding: EdgeInsets.only(top: 100, left: 50),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.6),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          padding: size > 850
              ? EdgeInsets.symmetric(horizontal: 250)
              : EdgeInsets.symmetric(horizontal: 25),
          width: double.infinity,
          margin: EdgeInsets.only(top: 50, bottom: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //FaIcon(),
              Text(
                "reach me at any time.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8,
                ),
              ),
              Text(
                "Get In Touch",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You can get in touch with me at any time and I will try my best to get back to you on a short notice. I'm actively searching for a job and therefore I'll be so grateful for any leads. I'm also open to collaboration on open source projects, so don't hesitate to contact me.",
                style: TextStyle(
                    wordSpacing: 2.5,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                textAlign: TextAlign.justify,
                softWrap: true,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        lauchEmail(email);
                      },
                      child: Text(
                        "Contact me",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(color: Colors.black38, width: 2),
                          backgroundColor: Colors.blue.withOpacity(0.7),
                          fixedSize: Size(160, 50),
                          padding: EdgeInsets.all(10)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }

  void lauchEmail(String email) {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    // ···
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: encodeQueryParameters(<String, String>{
        'subject': 'Type your subject',
        'body': 'Type your message here'
      }),
    );

    launchUrl(emailLaunchUri);
  }
}

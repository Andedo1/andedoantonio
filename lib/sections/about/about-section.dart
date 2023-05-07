import 'package:andedoantonio/sections/experience/components/hire-me.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/my-story.dart';
import 'components/skill.dart';
import 'components/strong-area.dart';
import 'components/tools.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key, required this.scaffoldkey}) : super(key: key);

  final scaffoldkey;

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  final Reference reference = FirebaseStorage.instance.ref('resume.pdf');
  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size < 400 ? 0 : 10, vertical: size < 400 ? 10 : 30),
      padding:
          EdgeInsets.symmetric(horizontal: size < 400 ? 0 : 20, vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            clipBehavior: Clip.none,
            alignment: WrapAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                margin: EdgeInsets.only(top: 20, left: 10),
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 20,
                          color: Colors.black.withOpacity(0.3))
                    ]),
                child: Stack(
                  children: [
                    Positioned(
                      right: 20,
                      bottom: 10,
                      child: Image.asset(
                        "assets/images/staircase.png",
                        height: 90,
                      ),
                    ),
                    Positioned(
                      child: Text(
                        "About my career in tech",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                height: 250,
                width: 300,
                margin: EdgeInsets.only(left: 10, top: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 20,
                          color: Colors.black.withOpacity(0.3))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyStory(),
                  ],
                ),
              ),
              //Skill showcase
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                height: 250,
                width: 300,
                margin: EdgeInsets.only(left: 10, top: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.3))
                    ]),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tech stack",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Container(
                          height: 25,
                          width: 25,
                          child: Image.asset(
                            "assets/images/tools.png",
                          ))
                    ],
                  ),
                  Tools(),
                ]),
              ),

              //My strong areas
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                height: 250,
                width: 300,
                margin: EdgeInsets.only(left: 10, top: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 20,
                          color: Colors.black.withOpacity(0.3))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text("My Strong areas",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    StrongArea(
                      strong: "Web Development",
                    ),
                    StrongArea(strong: "Mobile Apps Development"),
                    StrongArea(strong: "Desktop Apps Development"),
                    StrongArea(strong: "Cloud Computing"),
                    StrongArea(strong: "DevOps"),
                    StrongArea(strong: "UI/UX Design"),
                    StrongArea(strong: "Cyber Security"),
                    StrongArea(strong: "AI and Machine Learning"),
                    StrongArea(strong: "Data Science"),
                    StrongArea(strong: "Internet of Things(IoT)")
                  ],
                ),
              ),

              //Years of experience
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  height: 250,
                  width: 300,
                  margin: EdgeInsets.only(left: 10, top: 20),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 20),
                            blurRadius: 20,
                            color: Colors.black.withOpacity(0.3))
                      ]),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.pink.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.white,
                            width: 5,
                            style: BorderStyle.solid)),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          right: 40,
                          top: 10,
                          child: Center(
                            child: Text(
                              "4",
                              style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 20,
                          child: Center(
                            child: Text(
                              "Years of \nexperience",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 0,
                            top: -30,
                            child: Image.asset("assets/images/badge.png")),
                      ],
                    ),
                  )),
              //Soft skills Container
              Container(
                height: 250,
                width: 300,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                margin: EdgeInsets.only(left: 10, top: 20),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 20,
                          color: Colors.black.withOpacity(0.3))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Soft Skills",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Column(
                      children: const <Widget>[
                        SoftSkill(
                          skill: "Effective communication",
                        ),
                        SoftSkill(
                          skill: "Effective prioritization",
                        ),
                        SoftSkill(
                          skill: "Team player",
                        ),
                        SoftSkill(
                          skill: "Highly adaptable",
                        ),
                        SoftSkill(
                          skill: "Attentive to detail",
                        ),
                        SoftSkill(
                          skill: "Resilient problem solver",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: HireMe(scaffoldkey: widget.scaffoldkey),
              ),
              InkWell(
                onTap: () async {
                  // handle on tap
                  await download(reference);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30, left: 35),
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.2),
                      border: Border.all(
                          color: Colors.black.withOpacity(0.5),
                          width: 1,
                          style: BorderStyle.solid)),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/documents.png"),
                      Text("Download CV"),
                    ],
                  )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> download(Reference ref) async {
    final url = await ref.getDownloadURL();
    final Uri cvUrl = Uri.parse(url);
    if (await canLaunchUrl(cvUrl)) {
      await launchUrl(cvUrl);
    } else {
      throw 'Could not launch $cvUrl';
    }
  }
}

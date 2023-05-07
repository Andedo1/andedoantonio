import 'package:andedoantonio/sections/about/about-section.dart';
import 'package:andedoantonio/sections/contact/contact-section.dart';
import 'package:andedoantonio/sections/experience/experience-section.dart';
import 'package:andedoantonio/sections/feedback/feedback-section.dart';
import 'package:andedoantonio/sections/footer/footer-section.dart';
import 'package:andedoantonio/sections/home/home-section.dart';
import 'package:andedoantonio/sections/service/service-section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final servicesKey = GlobalKey();
  final contactKey = GlobalKey();
  final feedbackKey = GlobalKey();
  final projectKey = GlobalKey();
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  Future scrollToSection(itemKey) async {
    final context = itemKey.currentContext;
    await Scrollable.ensureVisible(context);
  }

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: size > 720
            ? Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Text(
                  "Welcome to My Portfolio",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          scrollToSection(aboutKey);
                        },
                        child: Text(
                          "About",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          scrollToSection(servicesKey);
                        },
                        child: Text(
                          "Services",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          scrollToSection(projectKey);
                        },
                        child: Text(
                          "Projects",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          scrollToSection(feedbackKey);
                        },
                        child: Text(
                          "Testimonial",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          scrollToSection(contactKey);
                        },
                        child: Text(
                          "Contact",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )),
                  ],
                )
              ])
            : const SizedBox(
                child: Text(
                  "Welcome to My Portfolio",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
        actions: size < 720
            ? [IconButton(onPressed: () {}, icon: Icon(Icons.menu))]
            : [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeSection(
              key: homeKey,
            ),
            AboutSection(
              key: aboutKey,
              scaffoldkey: scaffoldkey,
            ),
            ServiceSection(
              key: servicesKey,
            ),
            ReceWorks(
              key: projectKey,
              scaffoldkey: scaffoldkey,
            ),
            FeedbackSection(
              key: feedbackKey,
            ),
            ContactSection(
              key: contactKey,
              scaffoldKey: scaffoldkey,
            ),
            FooterSection()
          ],
        ),
      ),
    );
  }
}

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeSection(),
            AboutSection(),
            ServiceSection(),
            ReceWorks(),
            FeedbackSection(),
            ContactSection(),
            FooterSection()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'components/service-card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      //margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      padding: size > 850
          ? EdgeInsets.symmetric(horizontal: 250)
          : EdgeInsets.symmetric(horizontal: 25),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "proffesion services",
                style: TextStyle(fontSize: 6),
              ),
              Text(
                "Proffesional Services",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          clipBehavior: Clip.none,
          spacing: 30,
          runSpacing: 30,
          children: [
            ServiceCard(
              text: "mobile Apps",
              image: "assets/images/android.png",
            ),
            ServiceCard(
              text: "mobile Apps",
              image: "assets/images/ios-logo.png",
            ),
            ServiceCard(
              text: "desktop Apps",
              image: "assets/images/windows.png",
            ),
            ServiceCard(
              text: "desktop Apps",
              image: "assets/images/linux.png",
            ),
            ServiceCard(
              text: "Web Apps",
              image: "assets/images/web.png",
            ),
            ServiceCard(
              text: "DevOps",
              image: "assets/images/agile.png",
            ),
            ServiceCard(
              text: "Machine Learning",
              image: "assets/images/machine-learning.png",
            ),
            ServiceCard(
              text: "UI/UX",
              image: "assets/images/ui-ux.png",
            ),
            ServiceCard(
              text: "Cyber security",
              image: "assets/images/cyber-security.png",
            ),
            ServiceCard(
              text: "Cloud computing",
              image: "assets/images/cloud-computing.png",
            ),
            ServiceCard(
              text: "Pen Testing",
              image: "assets/images/hacker.png",
            ),
            ServiceCard(
              text: "IoT",
              image: "assets/images/iot.png",
            ),
            ServiceCard(
              text: "SEO",
              image: "assets/images/seo.png",
            ),
            ServiceCard(
              text: "Digital marketing",
              image: "assets/images/digimat.png",
            ),
            ServiceCard(
              text: "Data Science",
              image: "assets/images/data-science.png",
            ),
            ServiceCard(
              text: "Photograpy",
              image: "assets/images/photography.png",
            ),
            ServiceCard(
              text: "Technical Writing\n and Review",
              image: "assets/images/review.png",
            ),
            ServiceCard(
              text: "Graphic Design",
              image: "assets/images/graphic-design.png",
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
      ]),
    );
  }
}

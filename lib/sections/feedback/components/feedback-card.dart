import 'package:flutter/material.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(top: 80, left: 10),
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue.withOpacity(0.6),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: -80,
              child: Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(
                          color: Colors.grey,
                          width: 3,
                          style: BorderStyle.solid)),
                  child: Center(
                      child: Image.asset(
                    "assets/images/profile.png",
                    fit: BoxFit.cover,
                  )),
                ),
              )),
          Positioned(
              right: 0,
              left: 0,
              top: 40,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Text(
                      "I must say that he is an exceptional talent. His technical skills are top-notch, and he consistently delivered high-quality code on time and within budget.",
                      style: TextStyle(
                          wordSpacing: 2.5,
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.justify,
                      softWrap: true,
                    ),
                  ),
                  Text(
                    "Gamaliel Omany - Product Manager",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "EarthView Management Ltd",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7)),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

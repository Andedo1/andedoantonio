import 'package:flutter/material.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80, left: 10),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.lightGreen.withOpacity(0.6),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: -45,
              child: Center(
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: Colors.blue,
                          width: 5,
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
              top: 30,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Text(
                      "I must say that he is an exceptional talent. His technical skills are top-notch, and he consistently delivered high-quality code on time and within budget.",
                      style: TextStyle(
                          fontSize: 12, color: Colors.black.withOpacity(1)),
                    ),
                  ),
                  Text(
                    "Gamaliel Omany",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(1)),
                  ),
                  Text(
                    "(Product Manager)",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(1)),
                  ),
                  Text(
                    "EarthView Management Ltd",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(1)),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

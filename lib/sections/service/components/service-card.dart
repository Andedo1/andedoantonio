import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  String image;
  String text;
  ServiceCard({Key? key, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      height: 100,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          image,
          height: 60,
          width: 60,
        ),
        Text(text)
      ]),
    );
  }
}

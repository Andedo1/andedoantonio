import 'package:flutter/material.dart';
import 'dart:ui';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      width: size.width * 0.3,
      decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.7),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), bottomRight: Radius.circular(60))),
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.3,
                child: Text(
                  "hello there!",
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                width: size.width * 0.3,
                child: const FittedBox(
                  child: Text(
                    "Andedo \nAntonio",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: size.width * 0.3,
                child: const Text(
                  "software solutions engineer",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
      ),
    );
  }
}

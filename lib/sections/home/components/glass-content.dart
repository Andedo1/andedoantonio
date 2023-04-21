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
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), bottomLeft: Radius.circular(40)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: size.width > 720 ? size.width * 0.1 : size.width * 0,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          width: size.width * 0.3,
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.4),
          ),
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
                          color: Colors.black.withOpacity(0.9),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: size.width * 0.3,
                    child: const FittedBox(
                      child: Text(
                        "Andedo Antonio",
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
                      "software developer",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

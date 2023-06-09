import 'package:flutter/material.dart';

import 'components/glass-content.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: size.width * 0.6,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/saf2.jpg",
              ),
              fit: BoxFit.cover),
          color: Colors.white),
      child: size.width > 720
          ? Container(
              margin: EdgeInsets.only(top: 50),
              width: double.infinity,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: GlassContent(
                          size: size,
                        ),
                      )),
                ],
              ),
            )
          : const SizedBox(),
    );
  }
}

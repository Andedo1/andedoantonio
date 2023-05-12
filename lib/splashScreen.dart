import 'package:andedoantonio/home-screen.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _logoAnimationController;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    _navigateToHomePage();
    _logoAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    final curverAnimation = CurvedAnimation(
        parent: _logoAnimationController,
        curve: Curves.bounceIn,
        reverseCurve: Curves.easeOut);
    animation =
        Tween<double>(begin: 0, end: 2 * math.pi).animate(curverAnimation)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _logoAnimationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              _logoAnimationController.forward();
            }
          });

    _logoAnimationController.forward();
    super.initState();
  }

  _navigateToHomePage() async {
    await Future.delayed(Duration(milliseconds: 4000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => HomeScreen())));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _logoAnimationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.rotate(
          angle: animation.value,
          child: Container(
            height: 150,
            width: 150,
            child: Image.asset("assets/images/tt.png"),
          ),
        )
      ],
    );
  }
}

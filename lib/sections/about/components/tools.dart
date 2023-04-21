import 'package:flutter/material.dart';

class Tools extends StatelessWidget {
  const Tools({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Wrap(
        runSpacing: 5,
        clipBehavior: Clip.none,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        spacing: 10,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/images/python.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/java.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/vscode.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/php.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/c.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/aws.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/flutter.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/sql.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/firebase.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/mongodb.png",
                height: 60,
                width: 60,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/postman.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/figma.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/github.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/laravel.png",
                height: 40,
                width: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

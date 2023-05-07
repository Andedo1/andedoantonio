import 'package:flutter/material.dart';

import 'components/feedback-card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Container(
      padding: size > 750
          ? EdgeInsets.symmetric(horizontal: 200)
          : EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 50,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Recent feedback received",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 6,
                ),
              ),
              Text(
                "Feedback Received",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Wrap(
          clipBehavior: Clip.none,
          spacing: 50,
          runSpacing: 100,
          children: [
            FeedbackCard(),
            FeedbackCard(),
            FeedbackCard(),
            FeedbackCard(),
          ],
        ),
        SizedBox(
          height: 100,
        )
      ]),
    );
  }
}

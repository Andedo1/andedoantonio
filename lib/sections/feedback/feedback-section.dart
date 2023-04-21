import 'package:flutter/material.dart';

import 'components/feedback-card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(top: 100, left: 50),
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 50, left: 60),
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
          children: [
            FeedbackCard(),
            FeedbackCard(),
            FeedbackCard(),
            FeedbackCard()
          ],
        )
      ]),
    );
  }
}

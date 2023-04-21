import 'package:flutter/material.dart';

import 'components/hire-me.dart';
import 'components/recent-job.dart';

class ReceWorks extends StatelessWidget {
  const ReceWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(top: 100, left: 50),
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.purple.withOpacity(0.4),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        HireMe(),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            top: 50,
          ),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.17,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recent Completed Projects",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 6,
                    ),
                  ),
                  Text(
                    "Recent Projects",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        Wrap(
          clipBehavior: Clip.none,
          alignment: WrapAlignment.center,
          children: [
            RecentJob(),
            RecentJob(),
            RecentJob(),
            RecentJob(),
          ],
        )
      ]),
    );
  }
}

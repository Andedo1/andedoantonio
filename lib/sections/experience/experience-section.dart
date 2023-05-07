import 'package:flutter/material.dart';

import 'components/hire-me.dart';
import 'components/recent-job.dart';

class ReceWorks extends StatefulWidget {
  const ReceWorks({Key? key, required this.scaffoldkey}) : super(key: key);

  final scaffoldkey;

  @override
  State<ReceWorks> createState() => _ReceWorksState();
}

class _ReceWorksState extends State<ReceWorks> {
  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      padding: size > 750
          ? EdgeInsets.symmetric(
              horizontal: 200,
            )
          : EdgeInsets.symmetric(
              horizontal: 25,
            ),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.6),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          width: double.infinity,
          height: 50,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: -40,
                child: Center(
                  child: Container(
                      height: 60,
                      width: size > 750 ? size * 0.5 : size * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 20),
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 10)
                          ]),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/email.png",
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Starting a New Project?",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "get a detailed estimate",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            size > 550
                                ? HireMe(
                                    scaffoldkey: widget.scaffoldkey,
                                  )
                                : SizedBox(),
                          ])),
                ),
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            top: 50,
            bottom: 50,
          ),
          child: Row(
            children: [
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
          alignment: WrapAlignment.start,
          spacing: 50,
          runSpacing: 50,
          children: [
            RecentJob(),
            RecentJob(),
            RecentJob(),
            RecentJob(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        size < 450
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HireMe(scaffoldkey: widget.scaffoldkey),
                ],
              )
            : SizedBox(),
        SizedBox(
          height: 80,
        ),
      ]),
    );
  }
}

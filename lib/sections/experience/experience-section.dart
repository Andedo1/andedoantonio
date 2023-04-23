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
    return Container(
      //padding: EdgeInsets.only(top: 100, left: 50),
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.purple.withOpacity(0.4),
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
                top: -30,
                child: Center(
                  child: Container(
                    height: 60,
                    width: 440,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/email.png")
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Starting a New Project?",
                                    style: TextStyle(
                                      fontSize: 18,
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
                          HireMe(
                            scaffoldkey: widget.scaffoldkey,
                          )
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
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

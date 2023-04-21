import 'package:flutter/material.dart';

class HireMe extends StatelessWidget {
  const HireMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                            children: [Image.asset("assets/images/email.png")],
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              newMethod(context);
                            },
                            child: Container(
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 5),
                                      color: Colors.black.withOpacity(0.4),
                                      blurRadius: 5,
                                    )
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/handshake.png"),
                                  Text(
                                    "Hire me!",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<dynamic> newMethod(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => Container(
              height: 100,
              width: 300,
              color: Colors.blueAccent,
            ));
  }
}

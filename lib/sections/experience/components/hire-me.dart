import 'package:flutter/material.dart';

class HireMe extends StatefulWidget {
  const HireMe({
    Key? key,
  }) : super(key: key);

  @override
  State<HireMe> createState() => _HireMeState();
}

class _HireMeState extends State<HireMe> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }

  Future<dynamic> newMethod(BuildContext context) {
    bool? checkBoxValue = false;
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              insetPadding: EdgeInsets.symmetric(vertical: 50),
              clipBehavior: Clip.none,
              title: Text("Employment type"),
              elevation: 1,
              content: Container(
                height: 100,
                width: 150,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Full Time"),
                      Checkbox(value: false, onChanged: ((value) => true))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Part Time"),
                      Checkbox(
                          checkColor: Colors.green,
                          activeColor: Colors.red,
                          value: checkBoxValue,
                          onChanged: ((bool? value) {
                            setState(() {
                              checkBoxValue = value;
                            });
                          }))
                    ],
                  ),
                ]),
              ),
              actions: [TextButton(onPressed: submit, child: Text("Submit"))],
            ));
  }

  void submit() {
    Navigator.of(context).pop();
  }
}

import 'package:flutter/material.dart';

class HireMe extends StatefulWidget {
  const HireMe({Key? key, required this.scaffoldkey}) : super(key: key);

  final scaffoldkey;
  @override
  State<HireMe> createState() => _HireMeState();
}

class _HireMeState extends State<HireMe> {
  int? checked = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        insetPadding: EdgeInsets.symmetric(vertical: 50),
                        clipBehavior: Clip.none,
                        title: Text("Job Details"),
                        elevation: 1,
                        content: StatefulBuilder(
                          builder: ((context, setState) {
                            return Container(
                              height: 250,
                              width: 150,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                          alignLabelWithHint: true,
                                          labelText: "employer"),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          alignLabelWithHint: true,
                                          labelText: "position"),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          alignLabelWithHint: true,
                                          labelText: "email"),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Full Time"),
                                        Radio(
                                            splashRadius: 0.5,
                                            value: 1,
                                            groupValue: checked,
                                            onChanged: (int? val) {
                                              setState(() {
                                                checked = val;
                                              });
                                            }),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Part Time"),
                                        Radio(
                                            splashRadius: 0.5,
                                            value: 2,
                                            groupValue: checked,
                                            onChanged: (int? val) {
                                              setState(() {
                                                checked = val;
                                              });
                                            })
                                      ],
                                    ),
                                  ]),
                            );
                          }),
                        ),
                        actions: [
                          TextButton(onPressed: submit, child: Text("Submit"))
                        ],
                      ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/handshake.png",
                  height: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Hire me!",
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                side: BorderSide(color: Colors.black38, width: 2),
                backgroundColor: Colors.green,
                fixedSize: Size(130, 40),
                padding: EdgeInsets.all(10)),
          ),
        )
      ],
    );
  }

  void submit() {
    Navigator.of(context).pop();
  }
}

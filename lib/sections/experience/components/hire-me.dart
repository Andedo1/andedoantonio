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
        InkWell(
          onTap: () {
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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

  void submit() {
    Navigator.of(context).pop();
  }
}

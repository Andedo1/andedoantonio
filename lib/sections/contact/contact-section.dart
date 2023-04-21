import 'package:flutter/material.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  TextEditingController emailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(top: 100, left: 50),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.6),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30, left: 60),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "reach me at any time.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                    ),
                  ),
                  Text(
                    "Contact Me",
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
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.facebook),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.wechat),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.call),
                  )
                ],
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 300,
                    height: 50,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: "Name",
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: "Email",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 300,
                    height: 50,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: "Project type",
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: "Project budget",
                      ),
                    ),
                  ),
                  Container(
                    width: 500,
                    height: 50,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: "Budget Description",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "Contact Me",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

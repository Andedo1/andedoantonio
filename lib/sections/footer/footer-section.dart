import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Copyright 2023"),
        ],
      ),
    );
  }
}

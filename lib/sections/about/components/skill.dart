import 'package:flutter/material.dart';

class SoftSkill extends StatelessWidget {
  final String skill;
  const SoftSkill({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.new_releases),
        const SizedBox(
          width: 10,
        ),
        Text(
          skill,
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black),
        ),
      ],
    );
  }
}

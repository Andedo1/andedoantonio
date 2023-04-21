import 'package:flutter/material.dart';

class StrongArea extends StatelessWidget {
  final String strong;
  const StrongArea({Key? key, required this.strong}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: Colors.orange,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          strong,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

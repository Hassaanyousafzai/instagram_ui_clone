import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String name;
  const Stories({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}

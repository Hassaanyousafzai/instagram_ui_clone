import 'package:flutter/material.dart';

class ProfileReels extends StatelessWidget {
  const ProfileReels({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 20,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              color: Colors.purple,
            ),
          );
        }));
  }
}

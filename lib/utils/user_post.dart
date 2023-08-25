import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.more_horiz_rounded,
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.send_rounded),
                ],
              ),
              Icon(
                Icons.bookmark_border_outlined,
                size: 27,
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Text("Liked by "),
              Text(
                "Xeek",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(" and "),
              Text("others", style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 10),
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                TextSpan(
                    text: name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14)),
                const TextSpan(
                    text:
                        ' Hello my name is Hassaan and I am creating a clone UI of Instagram')
              ])),
        )
      ],
    );
  }
}

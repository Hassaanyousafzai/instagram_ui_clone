import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utils/stories.dart';
import 'package:instagram_ui_clone/utils/user_post.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List people = [
    'Hassaan',
    'Jon Snow',
    'Yousafzai',
    'Stark',
    'Zakarya',
    'Haseeb'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Instagram",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.send_rounded,
                      color: Colors.black,
                      size: 27,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            // stories
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: people.length,
                    itemBuilder: (context, index) {
                      return Stories(name: people[index]);
                    }),
              ),
            ),

            const Divider(
              height: 0,
              color: Colors.black26,
            ),

            // posts
            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: ((context, index) {
                    return UserPost(name: people[index]);
                  })),
            )
          ],
        ),
      ),
    );
  }
}

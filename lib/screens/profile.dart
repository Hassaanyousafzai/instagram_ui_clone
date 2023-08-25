import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utils/stories.dart';

import '../pages/profile_main.dart';
import '../pages/profile_reels.dart';
import '../pages/profile_tags.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});

  final List highlights = [
    'GDSC 2022',
    'Waffles🌟',
    'Future Fest',
    'GDSC Sum...',
    'GDSC Meet...',
    'Super Saiya...',
    'Food Revi...',
    'DevFestPe...',
    'YouKnowW...',
    'Tap To Edit'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 55,
                    backgroundImage: AssetImage('images/1.jpg'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "243",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Posts',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "1743",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Followers', style: TextStyle(fontSize: 15))
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "1239",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Following', style: TextStyle(fontSize: 15))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hassaan Yousafzai',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Public Figure',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Text('YOU-KNOW-WHO'),
                  ),
                  const Text('DIRECTIONER🎵'),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, bottom: 8),
                    child: Text(
                      '@hassaancreates',
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.link_rounded,
                        color: Colors.blue[900],
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        'linktr.ee/hassaanyousafzai',
                        style: TextStyle(color: Colors.blue[900]),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Profile Dashboard',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('New tools are now available')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[200],
                      ),
                      child: const Center(
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 35,
                      width: 115,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[200],
                      ),
                      child: const Center(
                        child: Text(
                          'Share Profile',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[200],
                      ),
                      child: const Center(
                        child: Text(
                          'Contact',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // highlights
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: highlights.length,
                    itemBuilder: (context, index) {
                      return Stories(name: highlights[index]);
                    }),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TabBar(tabs: [
              Tab(
                child: Icon(
                  Icons.grid_on_sharp,
                  color: Colors.black,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.videocam_outlined,
                  color: Colors.black,
                  size: 28,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.perm_contact_cal_outlined,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                ProfileMain(),
                ProfileReels(),
                ProfileTags(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

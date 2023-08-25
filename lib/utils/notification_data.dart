import 'package:flutter/material.dart';

class NotificationsData {
  final List<ImageProvider> notificationPeople = [
    const AssetImage('images/2.jpg'),
    const AssetImage('images/3.jpg'),
    const AssetImage('images/4.jpeg'),
  ];

  final List<List<String>> notifData = [
    ["Shaheryar Ashfaq", "liked your video"],
    ["Xeek Yousafzai", "liked your photo"],
    ["Muhammad Haseeb", "commented: 'Great'"],
  ];
}

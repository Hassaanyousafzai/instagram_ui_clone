import 'package:flutter/material.dart';

class NotificationsWidget extends StatelessWidget {
  NotificationsWidget(
      {super.key, required this.img, required this.name, required this.notif});

  final ImageProvider img;
  final String name, notif;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 22,
        backgroundImage: img,
      ),
      trailing: Container(
        height: 45,
        width: 45,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/1.jpg'), fit: BoxFit.cover)),
      ),
      title: Text(name),
      subtitle: Text(notif),
    );
  }
}

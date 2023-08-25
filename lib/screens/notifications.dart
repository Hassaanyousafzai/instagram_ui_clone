import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utils/notification_data.dart';
import 'package:instagram_ui_clone/utils/user_notifications.dart';

class UserNotifications extends StatelessWidget {
  UserNotifications({super.key});

  final NotificationsData data = NotificationsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(top: 30.0, left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Notifications',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: data.notifData.length * 10,
                  itemBuilder: ((context, index) {
                    final dataIndex = index % data.notificationPeople.length;
                    return NotificationsWidget(
                      img: data.notificationPeople[
                          index % data.notificationPeople.length],
                      name: data.notifData[dataIndex][0],
                      notif: data.notifData[dataIndex][1],
                    );
                  })))
        ],
      ),
    );
  }
}

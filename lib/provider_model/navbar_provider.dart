import 'package:flutter/material.dart';

import '../screens/home.dart';
import '../screens/notifications.dart';
import '../screens/profile.dart';
import '../screens/search.dart';
import '../screens/upload.dart';

class NavBarProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void changeSelectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

  final List<Widget> childrens = [
    UserHome(),
    const UserSearch(),
    const UserUpload(),
    UserNotifications(),
    UserProfile(),
  ];
}

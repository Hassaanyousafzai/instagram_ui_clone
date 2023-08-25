import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/provider_model/navbar_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print("Build");
    return SafeArea(
      child: Consumer<NavBarProvider>(
        builder: (context, value, child) {
          return Scaffold(
            body: value.childrens[value.selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: value.selectedIndex,
                type: BottomNavigationBarType.fixed,
                onTap: value.changeSelectedIndex,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add), label: 'Upload'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: 'Notifications'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Profile')
                ]),
          );
        },
      ),
    );
  }
}

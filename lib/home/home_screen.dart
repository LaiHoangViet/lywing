import 'package:flutter/material.dart';

import 'explore.dart';
import 'home.dart';
import 'tabbar-my-trip.dart';
import 'profile.dart';

class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    Explore(),
    TabbarMy_Trip(),
    Profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/tabs/search.png',
              color: Colors.grey,
            ),
            activeIcon: Image.asset(
              'assets/icons/tabs/search.png',
              color: Colors.blue,
            ),
            // backgroundColor: Colors.blue,
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/tabs/binoculars.png',
              color: Colors.grey,
            ),
            activeIcon: Image.asset(
              'assets/icons/tabs/binoculars.png',
              color: Colors.blue,
            ),
            title: Text(''),
            // backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/tabs/backpack.png',
              color: Colors.grey,
            ),
            activeIcon: Image.asset(
              'assets/icons/tabs/backpack.png',
              color: Colors.blue,
            ),
            title: Text(''),
            // backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/tabs/profile.png',
              color: Colors.grey,
            ),
            activeIcon: Image.asset(
              'assets/icons/tabs/profile.png',
              color: Colors.blue,
            ),
            title: Text(''),
            // backgroundColor: Colors.green,
          ),
        ],
        // currentIndex: tabIndex,
        // onTap: (int index) {
        //   setState(() {
        //     tabIndex = index;
        //   });
        // },
      ),
    );
  }
}

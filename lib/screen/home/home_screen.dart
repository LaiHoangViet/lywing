import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/constants.dart';

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
        backgroundColor: kWhite,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              MaterialIcons.search,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
              MaterialIcons.search,
              color: kBlue,
              size: 30,
            ),
            // backgroundColor: kBlue,
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MaterialIcons.explore,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
              MaterialIcons.explore,
              color: kBlue,
              size: 30,
            ),
            title: Text(''),
            // backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(
             FontAwesomeIcons.suitcaseRolling,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
             FontAwesomeIcons.suitcaseRolling,
              color: kBlue,
              size: 30,
            ),
            title: Text(''),
            // backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(
               MaterialIcons.person,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
               MaterialIcons.person,
              color: kBlue,
              size: 30,
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

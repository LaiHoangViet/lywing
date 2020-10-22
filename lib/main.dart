import 'package:flutter/material.dart';
import 'package:lywing/empty/watch-empty.dart';
import 'users/login/slash-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Slash_Screen(),
      // home: Watch_Empty(),
      // home: My_Trip_Empty(),
    );
  }
}



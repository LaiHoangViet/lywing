import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lywing/home/explore.dart';
import 'package:lywing/home/tabbar-my-trip.dart';
import 'package:lywing/sizes_helpers.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          width: displaySize(context).width,
          color: Color.fromRGBO(245, 247, 250, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                alignment: Alignment.bottomLeft,
                width: 230,
                height: 250,
                child: Text(
                  'Travel the world made simple',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Image(
                                  image: AssetImage('assets/icons/place.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Text(
                                    'Singapore (SIN)',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: displayWidth(context) * 0.39,
                            margin: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            child: Row(
                              children: <Widget>[
                                Image(
                                  image: AssetImage('assets/icons/Line.png'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Image(
                                  image: AssetImage('assets/icons/flights.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Text(
                                    'Where you go to?',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image(
                        image: AssetImage('assets/icons/Invert-button.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 130,
                      color: Color.fromRGBO(112, 112, 112, 0.0),
                      child: RaisedButton(
                        onPressed: () {},
                        elevation: 0,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Image(
                                image: AssetImage('assets/icons/return.png'),
                                color: Colors.black26,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Return',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      color: Color.fromRGBO(112, 112, 112, 0.0),
                      child: RaisedButton(
                        onPressed: () {},
                        elevation: 0,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.only(
                                      right: 5,
                                    ),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/icons/peoples.png')),
                                  ),
                                  Container(
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.only(
                                      right: 5,
                                    ),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/icons/childfriendly.png')),
                                  ),
                                  Container(
                                    child: Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.only(
                                      right: 5,
                                    ),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/icons/bag_fill.png')),
                                  ),
                                  Container(
                                    child: Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}

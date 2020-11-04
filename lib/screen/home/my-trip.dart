import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';
import '';
class My_Trip extends StatefulWidget {
  @override
  _My_TripState createState() => _My_TripState();
}

class _My_TripState extends State<My_Trip> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        children: <Widget>[
          Card(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  height: displaySize(context).height * 0.13,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    color: kBlue,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Hanoi',
                          style: TextStyle(
                            fontSize: 17,
                            color: kWhite,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Image(
                          image: AssetImage(
                              'assets/icons/my-trip/long-arrow-right.png'),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Singapore',
                          style: TextStyle(
                            fontSize: 17,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    color: kWhite,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 293,
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/VJ.png'),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                          ),
                                          child: Text(
                                            'Vietjet Air',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey600,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'VJ 177',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Economy',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: kGrey500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      '9:35',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'direct - 12h30',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: kGrey500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '17:35',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'Hanoi Noi Bai',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: kGrey600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Singapore Changi',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: kGrey500,
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
                        // width: 48,
                        padding: const EdgeInsets.only(
                          top: 50,
                          bottom: 50,
                        ),
                        decoration: BoxDecoration(
                          color: kGreenLight,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Jun 28',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  height: displaySize(context).height * 0.13,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    color: kBlue,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Hanoi',
                          style: TextStyle(
                            fontSize: 17,
                            color: kWhite,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Image(
                          image: AssetImage(
                              'assets/icons/my-trip/long-arrow-right.png'),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Singapore',
                          style: TextStyle(
                            fontSize: 17,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    color: kWhite,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 293,
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/VJ.png'),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                          ),
                                          child: Text(
                                            'Vietjet Air',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey600,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'VJ 177',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Economy',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: kGrey500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      '9:35',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'direct - 12h30',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: kGrey500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '17:35',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'Hanoi Noi Bai',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: kGrey500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Singapore Changi',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: kGrey500,
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
                        // width: 48,
                        padding: const EdgeInsets.only(
                          top: 50,
                          bottom: 50,
                        ),
                        decoration: BoxDecoration(
                          color: kGreenLight,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Jun 28',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          alignment: Alignment.bottomLeft,
          width: displaySize(context).width,
          height: displaySize(context).height * 0.13,
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(
              width: 0.0,
              color: kWhite,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                // spreadRadius: 6,
                blurRadius: 15,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Text(
            'Watch',
            style: TextStyle(
              fontSize: 32,
              color: kBlack,
            ),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(
          top: 10,
        ),
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 20,
            ),
            child: RaisedButton(
              onPressed: () {},
              color: kWhite,
              elevation: 10,
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  width: 0,
                  color: kWhite,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Singapope',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: Image.asset('assets/icons/explore/more.png'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'from Hồ Chí Minh city',
                      style: TextStyle(
                        fontSize: 11,
                        color: kGrey600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Image(
                            image:
                                AssetImage('assets/icons/explore/date-2.png'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'Web, Apri 16 - Thu Apr 18',
                            style: TextStyle(
                              fontSize: 12,
                              color: kGrey600,
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
          Container(
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 20,
            ),
            child: RaisedButton(
              onPressed: () {},
              color: kWhite,
              elevation: 10,
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  width: 0,
                  color: kWhite,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Hong Kong',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: Image.asset('assets/icons/explore/more.png'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'from Hồ Chí Minh city',
                      style: TextStyle(
                        fontSize: 11,
                        color: kGrey600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Image(
                            image:
                                AssetImage('assets/icons/explore/date-2.png'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'Web, Apri 16 - Thu Apr 18',
                            style: TextStyle(
                              fontSize: 12,
                              color: kGrey600,
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
          Container(
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 20,
            ),
            child: RaisedButton(
              onPressed: () {},
              color: kWhite,
              elevation: 10,
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  width: 0,
                  color: kWhite,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Tokyo',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: Image.asset('assets/icons/explore/more.png'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'from Hồ Chí Minh city',
                      style: TextStyle(
                        fontSize: 11,
                        color: kGrey600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Image(
                            image:
                                AssetImage('assets/icons/explore/date-2.png'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'Web, Apri 16 - Thu Apr 18',
                            style: TextStyle(
                              fontSize: 12,
                              color: kGrey600,
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
          Container(
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 20,
            ),
            child: RaisedButton(
              onPressed: () {},
              color: kWhite,
              elevation: 10,
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  width: 0,
                  color: kWhite,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'New York',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: Image.asset('assets/icons/explore/more.png'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'from Hồ Chí Minh city',
                      style: TextStyle(
                        fontSize: 11,
                        color: kGrey600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Image(
                            image:
                                AssetImage('assets/icons/explore/date-2.png'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'Web, Apri 16 - Thu Apr 18',
                            style: TextStyle(
                              fontSize: 12,
                              color: kGrey600,
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
    );
  }
}

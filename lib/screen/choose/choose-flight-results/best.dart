import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/flight-details.dart';
import 'package:lywing/sizes_helpers.dart';

class Best extends StatefulWidget {
  @override
  _BestState createState() => _BestState();
}

class _BestState extends State<Best> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              bottom: 20,
            ),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kGrey100,
                  // spreadRadius: 6,
                  blurRadius:10,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Flight_Details()),
                );
              },
              elevation: 0,
              color: kWhite,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Image(
                              image: AssetImage('assets/images/VJ-1.png'),
                              width: displaySize(context).width * 0.11,
                              height: displaySize(context).height * 0.05,
                              fit: BoxFit.fill),
                        ),
                        Container(
                          width: displaySize(context).width * 0.35,
                          height: displaySize(context).height * 0.1,
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        '9:35',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: ImageIcon(
                                        AssetImage('assets/icons/flights.png'),
                                        color: kBlue,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '13:35',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'SIN -HAN, Vietjet Ari',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: displaySize(context).width * 0.3,
                          height: displaySize(context).height * 0.1,
                          padding: const EdgeInsets.only(
                            top: 6,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'direct flight',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '3h 20m',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
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
                    height: displaySize(context).height * 0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Image(
                              image: AssetImage('assets/images/VJ-1.png'),
                              width: displaySize(context).width * 0.11,
                              height: displaySize(context).height * 0.05,
                              fit: BoxFit.fill),
                        ),
                        Container(
                          width: displaySize(context).width * 0.35,
                          height: displaySize(context).height * 0.1,
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        '14:55',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: ImageIcon(
                                        AssetImage('assets/icons/flights.png'),
                                        color: kBlue,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '17:20',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'HAN -SIN, Vietjet Ari',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: displaySize(context).width * 0.3,
                          height: displaySize(context).height * 0.1,
                          padding: const EdgeInsets.only(
                            top: 6,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'direct flight',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '3h 20m',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
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
                    height: displaySize(context).height * 0.05,
                    child: Image(
                      image: AssetImage('assets/icons/Line-3.png'),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '12 nights in Singapore',
                            style: TextStyle(
                              fontSize: 12,
                              color: kGrey200,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$112',
                            style: TextStyle(
                              fontSize: 17,
                              color: kBlack,
                            ),
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 20,
            ),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kGrey100,
                  // spreadRadius: 6,
                  blurRadius:10,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Flight_Details()),
                );
              },
              elevation: 0,
              color: kWhite,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Image(
                              image: AssetImage('assets/images/VJ-1.png'),
                              width: displaySize(context).width * 0.11,
                              height: displaySize(context).height * 0.05,
                              fit: BoxFit.fill),
                        ),
                        Container(
                          width: displaySize(context).width * 0.35,
                          height: displaySize(context).height * 0.1,
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        '9:35',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: ImageIcon(
                                        AssetImage('assets/icons/flights.png'),
                                        color: kBlue,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '13:35',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'SIN -HAN, Vietjet Ari',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: displaySize(context).width * 0.3,
                          height: displaySize(context).height * 0.1,
                          padding: const EdgeInsets.only(
                            top: 6,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'direct flight',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '3h 20m',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
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
                    height: displaySize(context).height * 0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Image(
                              image: AssetImage('assets/images/VJ-1.png'),
                              width: displaySize(context).width * 0.11,
                              height: displaySize(context).height * 0.05,
                              fit: BoxFit.fill),
                        ),
                        Container(
                          width: displaySize(context).width * 0.35,
                          height: displaySize(context).height * 0.1,
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        '14:55',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: ImageIcon(
                                        AssetImage('assets/icons/flights.png'),
                                        color: kBlue,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '17:20',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'HAN -SIN, Vietjet Ari',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: displaySize(context).width * 0.3,
                          height: displaySize(context).height * 0.1,
                          padding: const EdgeInsets.only(
                            top: 6,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'direct flight',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '3h 20m',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
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
                    height: displaySize(context).height * 0.05,
                    child: Image(
                      image: AssetImage('assets/icons/Line-3.png'),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '12 nights in Singapore',
                            style: TextStyle(
                              fontSize: 12,
                              color: kGrey200,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$112',
                            style: TextStyle(
                              fontSize: 17,
                              color: kBlack,
                            ),
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 20,
            ),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kGrey100,
                  // spreadRadius: 6,
                  blurRadius:10,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Flight_Details()),
                );
              },
              elevation: 0,
              color: kWhite,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Image(
                              image: AssetImage('assets/images/VJ-1.png'),
                              width: displaySize(context).width * 0.11,
                              height: displaySize(context).height * 0.05,
                              fit: BoxFit.fill),
                        ),
                        Container(
                          width: displaySize(context).width * 0.35,
                          height: displaySize(context).height * 0.1,
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        '9:35',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: ImageIcon(
                                        AssetImage('assets/icons/flights.png'),
                                        color: kBlue,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '13:35',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'SIN -HAN, Vietjet Ari',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: displaySize(context).width * 0.3,
                          height: displaySize(context).height * 0.1,
                          padding: const EdgeInsets.only(
                            top: 6,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'direct flight',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '3h 20m',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
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
                    height: displaySize(context).height * 0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Image(
                              image: AssetImage('assets/images/VJ-1.png'),
                              width: displaySize(context).width * 0.11,
                              height: displaySize(context).height * 0.05,
                              fit: BoxFit.fill),
                        ),
                        Container(
                          width: displaySize(context).width * 0.35,
                          height: displaySize(context).height * 0.1,
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        '14:55',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: ImageIcon(
                                        AssetImage('assets/icons/flights.png'),
                                        color: kBlue,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '17:20',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'HAN -SIN, Vietjet Ari',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: displaySize(context).width * 0.3,
                          height: displaySize(context).height * 0.1,
                          padding: const EdgeInsets.only(
                            top: 6,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'direct flight',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '3h 20m',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey200,
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
                    height: displaySize(context).height * 0.05,
                    child: Image(
                      image: AssetImage('assets/icons/Line-3.png'),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '12 nights in Singapore',
                            style: TextStyle(
                              fontSize: 12,
                              color: kGrey200,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$112',
                            style: TextStyle(
                              fontSize: 17,
                              color: kBlack,
                            ),
                          ),),
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

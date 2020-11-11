import 'dart:ui';

// import 'package:badges/badges.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/overview.dart';
import 'package:lywing/screen/choose/passengers.dart';
import 'package:lywing/sizes_helpers.dart';

class Booking_1 extends StatefulWidget {
  @override
  _Booking_1State createState() => _Booking_1State();
}

class _Booking_1State extends State<Booking_1> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: IconButton(
            icon: Image.asset(
              'assets/icons/pin-left.png',
              color: kWhite,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            'Booking',
            style: TextStyle(
              color: kWhite,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kBlue,
        ),
      ),
      body: Container(
        color: kGrey100,
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 0.0],
                  // 10% of the width, so there are ten blinds.
                  colors: [kBlue, kGrey100],
                  // red to yellow
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 0,
                    color: kWhite,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      // spreadRadius: 6,
                      blurRadius: 15,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'HAN',
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage(
                                'assets/icons/lineright-flights.png',
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'SIN',
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Hanoi',
                              style: TextStyle(
                                color: kGrey200,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              '1 stop',
                              style: TextStyle(
                                color: kGrey200,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Singapore',
                              style: TextStyle(
                                color: kGrey200,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Mar 25, ',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '9:35',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              '12h30m',
                              style: TextStyle(
                                color: kGrey200,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Mar 25, ',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '17:35',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
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
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Dash(
                          length: displaySize(context).width * 0.8,
                          dashThickness: 1,
                          dashGap:1,
                          dashColor: kGrey200,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image(
                                    image: AssetImage('assets/images/VJ.png'),
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Text(
                                    'Vietjet Air',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Airbus 320',
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
                            child: Text(
                              'Economy',
                              style: TextStyle(
                                fontSize: 12,
                                color: kGrey400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(color: kGrey200, width: 1),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'HAN',
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage(
                                'assets/icons/lineright-flights.png',
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'SIN',
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Hanoi',
                              style: TextStyle(
                                color: kGrey200,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              '1 stop',
                              style: TextStyle(
                                color: kGrey200,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Singapore',
                              style: TextStyle(
                                color: kGrey200,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Mar 25, ',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '9:35',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              '12h30m',
                              style: TextStyle(
                                color: kGrey200,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Mar 25, ',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '17:35',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
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
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Dash(
                        length: displaySize(context).width * 0.8,
                        dashThickness: 1,
                        dashGap:1,
                        dashColor: kGrey200,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image(
                                    image: AssetImage('assets/images/VJ.png'),
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Text(
                                    'Vietjet Air',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Airbus 320',
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
                            child: Text(
                              'Economy',
                              style: TextStyle(
                                fontSize: 12,
                                color: kGrey400,
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
              margin: const EdgeInsets.all(15),
              child: Text(
                'Passengers',
                style: TextStyle(
                  fontSize: 17,
                  color: kBlack,
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 15,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: DottedBorder(
                                          padding: const EdgeInsets.all(15),
                                          color: kGrey200,
                                          strokeWidth: 1,
                                          borderType: BorderType.RRect,
                                          radius: Radius.circular(12),
                                          child: Image(
                                            image: AssetImage(
                                              'assets/icons/passenger.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                'Full Name',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  color: kGrey400,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                'Mr.Phong Van Tran',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  color: kBlack,
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
                          ),
                          Positioned(
                            bottom: displaySize(context).height * 0.03,
                            left: displaySize(context).width * 0.77,
                            child: Container(
                              // alignment: Alignment.topLeft,
                              width: displaySize(context).width * 0.07,
                              child: Ink(
                                decoration: const ShapeDecoration(
                                  color: kGrey100,
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon: Image.asset('assets/icons/close.png'),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        // top: 10,
                        bottom: 15,
                      ),
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      child: Dash(
                          length: displaySize(context).width * 0.8,
                          dashThickness: 1,
                          dashGap: 1,
                          dashColor: kGrey400),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Nationality',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Vietnam',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Date of birth',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '15/04/1996',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Passport',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'D9641312',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: kBlack,
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
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Travel insurance',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Travel Plus',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Bags',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          '1x',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: kBlack,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin: const EdgeInsets.only(
                                                left: 3,
                                                right: 3,
                                              ),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/icons/bag-2.png'),
                                              ),
                                            ),
                                            Text(
                                              '56x32x36cm,',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: kBlack,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '7kg',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: kBlack,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 15,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: DottedBorder(
                                          padding: const EdgeInsets.all(15),
                                          color: kGrey200,
                                          strokeWidth: 1,
                                          borderType: BorderType.RRect,
                                          radius: Radius.circular(12),
                                          child: Image(
                                            image: AssetImage(
                                              'assets/icons/passenger.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                'Full Name',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  color: kGrey400,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                'Mr.Phong Van Tran',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  color: kBlack,
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
                          ),
                          Positioned(
                            bottom: displaySize(context).height * 0.03,
                            left: displaySize(context).width * 0.77,
                            child: Container(
                              width: displaySize(context).width * 0.07,
                              child: Ink(
                                decoration: const ShapeDecoration(
                                  color: kGrey100,
                                  shape: CircleBorder(),
                                ),
                                child: IconButton(
                                  icon: Image.asset('assets/icons/close.png'),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                      ),
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      child: Dash(
                          length: displaySize(context).width * 0.8,
                          dashThickness: 1,
                          dashGap: 1,
                          dashColor: kGrey400),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Nationality',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Vietnam',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Date of birth',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '15/04/1996',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Passport',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'D9641312',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: kBlack,
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
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Travel insurance',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Travel Plus',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Bags',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          '1x',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: kBlack,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin: const EdgeInsets.only(
                                                left: 3,
                                                right: 3,
                                              ),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/icons/bag-2.png'),
                                              ),
                                            ),
                                            Text(
                                              '56x32x36cm,',
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: kBlack,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '7kg',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: kBlack,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 20,
              ),
              child: DottedBorder(
                padding: const EdgeInsets.all(5),
                color: kGrey400,
                strokeWidth: 1,
                borderType: BorderType.RRect,
                radius: Radius.circular(12),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: kGrey100,
                    hoverElevation: 0.0,
                    highlightElevation: 0.0,
                    elevation: 0,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(
                        width: 0.0,
                        color: kGrey100,
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      top: 35,
                      bottom: 35,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Passengers()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image(
                            image:
                                AssetImage('assets/icons/ios-person-add-2.png'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text(
                            'Add a Passenger',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  color: kWhite,
                  width: 0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Contact details',
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border.all(color: kGrey200, width: 1),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Contact name',
                            style: TextStyle(
                              fontSize: 11,
                              color: kGrey400,
                            ),
                          ),
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: kGrey500,
                                  ),
                                ),
                                hintText: 'eg. NGUYEN TIEN LINH'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Phone number',
                            style: TextStyle(
                              fontSize: 11,
                              color: kGrey400,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.2,
                                child: TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: kGrey500,
                                        ),
                                      ),
                                      hintText: '+84'),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 10,
                                ),
                                width: displaySize(context).width * 0.68,
                                child: TextField(
                                  decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: kGrey500,
                                        ),
                                      ),
                                      hintText: 'Enter phone number'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Email address',
                            style: TextStyle(
                              fontSize: 11,
                              color: kGrey400,
                            ),
                          ),
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: kGrey500,
                                  ),
                                ),
                                hintText: 'Email to receive booking info'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  color: kWhite,
                  width: 0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Visa requirements',
                      style: TextStyle(
                        fontSize: 17,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border.all(color: kGrey200, width: 1),
                    ),
                  ),
                  Container(
                    child: Text(
                      'A visa or airport transit visa may be necessary for travel. Requirements found here are for reference purposes only. Contact the embassy or your foreign ministry for more information. Kiwi.com is not liable for any passenger who is denied from boarding or from entering any destination due to visa issues.',
                      style: TextStyle(
                        fontSize: 13,
                        color: kGrey400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 50,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  color: kWhite,
                  width: 0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Add promote code',
                      style: TextStyle(
                        fontSize: 17,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border.all(color: kGrey200, width: 1),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Text(
                            'Promote code',
                            style: TextStyle(
                              fontSize: 11,
                              color: kGrey200,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.6,
                                child: TextField(
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(10),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          borderSide: BorderSide(
                                            width: 1,
                                          )),
                                      hintText: 'Enter promote code'),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 25,
                                ),
                                child: RaisedButton(
                                  onPressed: () {},
                                  color: kBlue,
                                  hoverElevation: 0.0,
                                  highlightElevation: 0.0,
                                  elevation: 0,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                    side: BorderSide(
                                      width: 0.0,
                                      color: kBlue,
                                    ),
                                  ),
                                  child: Text(
                                    'Add',
                                    style: TextStyle(
                                      color: kWhite,
                                      fontSize: 13,
                                    ),
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
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 50,
              ),
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  width: 0,
                  color: kWhite,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    // spreadRadius: 6,
                    blurRadius: 15,
                    offset: Offset(10, 0),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '\$122',
                            style: TextStyle(
                              fontSize: 17,
                              color: kBlack,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Total (1 adult)',
                            style: TextStyle(
                              fontSize: 12,
                              color: kGrey400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      hoverElevation: 0.0,
                      highlightElevation: 0.0,
                      elevation: 0,
                      color: kGreenLight,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        side: BorderSide(
                          width: 0.1,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Overview()),
                        );
                      },
                      child: Text(
                        'Book now',
                        style: TextStyle(
                          fontSize: 15,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

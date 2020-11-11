import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/confirm.dart';
import 'package:lywing/sizes_helpers.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
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
            'Payment',
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
            // Thong tin chuyen di
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 0.0],
                  colors: [kBlue, kGrey100],
                  tileMode: TileMode.repeated,
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
            //Tong so tien
            Container(
              margin: EdgeInsets.only(
                left: displaySize(context).width * 0.1,
                right: displaySize(context).width * 0.1,
                top: 1,
              ),
              // padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
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
              child: ExpansionTile(
                backgroundColor: kWhite,
                title: Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Total:',
                        style: TextStyle(fontSize: 12, color: kGrey400),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          '\$112',
                          style: TextStyle(fontSize: 20, color: kBlack),
                        ),
                      ),
                    ],
                  ),
                ),
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x Passenger',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$112.36',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x Cabin baggage',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Free',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x Checked baggage',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$7.23',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x Travel insurance',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$7.46',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x AirHelp+',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$5.56',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x  Plus service package',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$11.35',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x Passenger',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$112.36',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
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
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Total:',
                          style: TextStyle(fontSize: 12, color: kGrey400),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            '\$112',
                            style: TextStyle(fontSize: 20, color: kBlack),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Credit card
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 10,
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
                      'Credit card',
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
                  //Card Holder
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Card Holder',
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
                  //Card Number
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Card Number',
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
                              hintText: '0000 - 0000 - 0000 - 0000',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Expiry date and CVC
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    child: Row(
                      children: <Widget>[
                        //Expiry date
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1.0,
                                  color: kGrey500,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Expiry date',
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
                                      hintText: 'mm / yy',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //CVC
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1.0,
                                  color: kGrey500,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'CVC',
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
                                      hintText: '---',
                                    ),
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

            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 15,
                right: 15,
              ),
              padding: const EdgeInsets.all(15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: kGrey200,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 0,
                  color: kGrey200,
                ),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Image(
                      image: AssetImage(
                        'assets/icons/credit-card.png',
                      ),
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Container(
                    width: displaySize(context).width * 0.7,
                    margin: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      'Your card is secured by Stripe. We do not store your credit card infomation.',
                      style: TextStyle(
                        fontSize: 12,
                        color: kGrey600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(
                top: 60,
              ),
              padding: const EdgeInsets.all(10),
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
                          MaterialPageRoute(builder: (context) => Confirm()),
                        );
                      },
                      child: Text(
                        'Pay now',
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

import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Flight_Details extends StatefulWidget {
  @override
  _Flight_DetailsState createState() => _Flight_DetailsState();
}

class _Flight_DetailsState extends State<Flight_Details> {
  int _value = 1;
  bool save_flight = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: IconButton(
            icon: Image.asset('assets/icons/pin-left.png'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            'Flight Details',
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            // Outbound
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    color: kBlue,
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Outbound',
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '12h40m',
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                          color: kGrey200,
                          // spreadRadius: 6,
                          blurRadius: 10,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 15,
                      right: 15,
                    ),
                    child: Column(
                      children: <Widget>[
                        // Title địa điểm đi và đến
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // Diem di va diem den
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'HAN',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/icons/icswapright-2.png'),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'SIN',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Ngay thang
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/date.png',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Web, Mar 20',
                                        style: TextStyle(
                                          fontSize: 15,
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
                        //Thoi gian bat dau di
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '9:30',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/Oval.png',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'HAN Hanoi',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Noi Bai T2',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Chuyen bay
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.11,
                                child: Text(
                                  '1h50m',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: kGrey200,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Image(
                                  image: AssetImage(
                                      'assets/icons/linedown-flights.png'),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: kGrey100,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButton(
                                    icon: Icon(Icons.arrow_drop_down),
                                    iconSize: 42,
                                    // isExpanded: true,
                                    underline: SizedBox(),
                                    value: _value,
                                    items: [
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 3,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 4,
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        //Thoi gian bat dau di
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '13:35',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/Oval.png',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'DKM Bangkok',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Don Mueang T1',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
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
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.12,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/Line-4.png',
                                        ),
                                      ),
                                    ),
                                    DottedBorder(
                                      padding: const EdgeInsets.only(
                                        top: 5,
                                        bottom: 5,
                                        left: 15,
                                        right: 55,
                                      ),
                                      color: kGrey200,
                                      strokeWidth: 1,
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Image(
                                              image: AssetImage(
                                                'assets/icons/timelapse.png',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                            ),
                                            child: Text(
                                              '8h20 layover in Bangkok',
                                              style: TextStyle(
                                                fontSize: 15,
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
                        //Thoi gian bat dau di
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '14:55',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/Oval.png',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'DMK Bangkok',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Don Mueang T1',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Chuyen bay
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.11,
                                child: Text(
                                  '2h30m',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: kGrey200,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Image(
                                  image: AssetImage(
                                      'assets/icons/linedown-flights.png'),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: kGrey100,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButton(
                                    icon: Icon(Icons.arrow_drop_down),
                                    iconSize: 42,
                                    // isExpanded: true,
                                    underline: SizedBox(),
                                    value: _value,
                                    items: [
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 3,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 4,
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        //Thoi gian bat dau di
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '17:35',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/Oval.png',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'SIN Singgapore',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Changi T4',
                                  style: TextStyle(
                                    fontSize: 12,
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
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
                bottom: 15,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    color: kBlue,
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Inbound',
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '12h40m',
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                          color: kGrey200,
                          // spreadRadius: 6,
                          blurRadius: 10,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 15,
                      right: 15,
                    ),
                    child: Column(
                      children: <Widget>[
                        // Title địa điểm đi và đến
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // Diem di va diem den
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'HAN',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/icons/icswapright-2.png'),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'SIN',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Ngay thang
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/date.png',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Web, Mar 20',
                                        style: TextStyle(
                                          fontSize: 15,
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
                        //Thoi gian bat dau di
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '9:30',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/Oval.png',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'HAN Hanoi',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Noi Bai T2',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Chuyen bay
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.11,
                                child: Text(
                                  '1h50m',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: kGrey200,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Image(
                                  image: AssetImage(
                                      'assets/icons/linedown-flights.png'),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: kGrey100,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButton(
                                    icon: Icon(Icons.arrow_drop_down),
                                    iconSize: 42,
                                    // isExpanded: true,
                                    underline: SizedBox(),
                                    value: _value,
                                    items: [
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 3,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 4,
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        //Thoi gian bat dau di
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '13:35',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/Oval.png',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'DKM Bangkok',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Don Mueang T1',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
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
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.12,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/Line-4.png',
                                        ),
                                      ),
                                    ),
                                    DottedBorder(
                                      padding: const EdgeInsets.only(
                                        top: 5,
                                        bottom: 5,
                                        left: 15,
                                        right: 55,
                                      ),
                                      color: kGrey200,
                                      strokeWidth: 1,
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Image(
                                              image: AssetImage(
                                                'assets/icons/timelapse.png',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              left: 10,
                                            ),
                                            child: Text(
                                              '8h20 layover in Bangkok',
                                              style: TextStyle(
                                                fontSize: 15,
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
                        //Thoi gian bat dau di
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '14:55',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/Oval.png',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'DMK Bangkok',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Don Mueang T1',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Chuyen bay
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.11,
                                child: Text(
                                  '2h30m',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: kGrey200,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Image(
                                  image: AssetImage(
                                      'assets/icons/linedown-flights.png'),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: kGrey100,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButton(
                                    icon: Icon(Icons.arrow_drop_down),
                                    iconSize: 42,
                                    // isExpanded: true,
                                    underline: SizedBox(),
                                    value: _value,
                                    items: [
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 3,
                                      ),
                                      DropdownMenuItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 100,
                                            bottom: 5,
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/VJ-1.png'),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        'Vietjet Air',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: kGrey500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        'Airbus 320',
                                                        style: TextStyle(
                                                          fontSize: 11,
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
                                        value: 4,
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        //Thoi gian bat dau di
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '17:35',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/icons/Oval.png',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'SIN Singgapore',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Changi T4',
                                  style: TextStyle(
                                    fontSize: 12,
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
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: kWhite,
                boxShadow: [
                  BoxShadow(
                    color: kGrey200,
                    // spreadRadius: 6,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Good to known',
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    height: 1,
                    decoration: BoxDecoration(
                      color: kBlack100,
                      border: Border.all(
                        width: 0,
                        color: kBlack100,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Image(
                            image: AssetImage('assets/icons/time-2.png'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Timezone different is 1 hours',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Between Hanoi and Singapore',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 12,
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
                top: 15,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                boxShadow: [
                  BoxShadow(
                    color: kGrey200,
                    // spreadRadius: 6,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Good to known',
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    height: 1,
                    decoration: BoxDecoration(
                      color: kBlack100,
                      border: Border.all(
                        width: 0,
                        color: kBlack100,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Checkbox(
                            value: save_flight,
                            onChanged: (bool value) {
                              setState(() {
                                save_flight = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Save this flight',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'So you can always come back and find it',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 12,
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
                    // decoration: BoxDecoration(
                    //   color: kGreenLight,
                    //   borderRadius: BorderRadius.circular(30),
                    //   border: Border.all(
                    //     color: kGreenLight,
                    //     width: 1,
                    //   ),
                    // ),
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
                      onPressed: () {},
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

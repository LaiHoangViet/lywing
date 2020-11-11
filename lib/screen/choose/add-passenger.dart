import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Add_Passenger extends StatefulWidget {
  @override
  _Add_PassengerState createState() => _Add_PassengerState();
}

class _Add_PassengerState extends State<Add_Passenger> {
  int _value = 0;
  int _ID_type = 1;
  int _choose_bag = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            elevation: 3.0,
            leading: IconButton(
              icon: Image.asset('assets/icons/pin-left.png'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            title: Text(
              'Add Passengers',
              style: TextStyle(
                color: kBlack,
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
            actions: <Widget>[
              Container(
                  alignment: Alignment.centerRight,
                  child: RaisedButton(
                    onPressed: () {},
                    elevation: 0,
                    highlightElevation: 0,
                    splashColor: kWhite,
                    color: kWhite,
                    highlightColor: kWhite,
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontSize: 17,
                        color: kBlack,
                      ),
                    ),
                  )),
            ],
            backgroundColor: kWhite,
          ),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              //Passenger details
              Container(
                color: kWhite,
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                child: Container(
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
                          'Passenger details',
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

                      //Surname
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Surname',
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
                                    hintText: 'eg. NGUYEN'),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Middle name
                      Container(
                        margin: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Middle name',
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
                                  hintText: 'eg. VAN',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Given name
                      Container(
                        margin: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Given name',
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
                                  hintText: 'eg. LONG',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Gender
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
                                'Gender',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: kGrey400,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
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
                                      child: Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: () =>
                                                setState(() => _value = 0),
                                            child: Container(
                                              height: 56,
                                              width: 56,
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/icons/Famale.png'),
                                                color: _value == 0
                                                    ? kBlue
                                                    : kGrey600,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'Famale',
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
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        left: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            width: 1.0,
                                            color: kGrey500,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: () =>
                                                setState(() => _value = 1),
                                            child: Container(
                                              height: 56,
                                              width: 56,
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/icons/men.png'),
                                                color: _value == 1
                                                    ? kBlue
                                                    : kGrey600,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              'Male',
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Date of birth
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
                              child: TextField(
                                decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: kGrey500,
                                      ),
                                    ),
                                    hintText: 'Pick your date of birth'),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Nationality
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
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
                              child: TextField(
                                decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: kGrey500,
                                      ),
                                    ),
                                    hintText: 'Select a Country or Region'),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //ID type
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
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
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1.0,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                              child: DropdownButton(
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 42,
                                  // isExpanded: true,
                                  underline: SizedBox(),
                                  value: _ID_type,
                                  items: <DropdownMenuItem<int>>[
                                    DropdownMenuItem(
                                      child: Container(
                                        padding: EdgeInsets.only(
                                          right:
                                              displaySize(context).width * 0.59,
                                        ),
                                        child: Text(
                                          'Passport',
                                          style: TextStyle(
                                            color: kGrey400,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Container(
                                        padding: EdgeInsets.only(
                                          right:
                                              displaySize(context).width * 0.59,
                                        ),
                                        child: Text(
                                          'National ID',
                                          style: TextStyle(
                                            color: kGrey400,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      value: 2,
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _ID_type = value;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),

                      //ID number (optional)
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'ID number (optional)',
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
                                    hintText: 'Number of Passport or ID'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Tab Travel insurance
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 15,
                  right: 15,
                ),
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: kGrey100,
                  ),
                ),
                child: TabBar(
                  indicatorColor: kGrey100,
                  indicator: BoxDecoration(
                    color: kGrey100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tabs: <Widget>[
                    Container(
                      height: displaySize(context).height * 0.2,
                      child: Tab(
                        icon: Image.asset(
                          'assets/icons/tabs/shield-3.png',
                          color: kOrangeLight,
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Travel Plus',
                              style: TextStyle(
                                color: kGrey400,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              '\$33,60',
                              style: TextStyle(
                                color: kGrey400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: displaySize(context).height * 0.2,
                      child: Tab(
                        icon: Image.asset(
                          'assets/icons/tabs/shield-3.png',
                          color: kBlue1000,
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Travel Basic',
                              style: TextStyle(
                                color: kGrey400,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              '\$15,45',
                              style: TextStyle(
                                color: kGrey400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: displaySize(context).height * 0.2,
                      child: Tab(
                        icon: Image.asset(
                          'assets/icons/tabs/shield-3.png',
                          color: kGrey600,
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'No insurance',
                              style: TextStyle(
                                color: kGrey400,
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'Free',
                              style: TextStyle(
                                color: kGrey400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //View tab Travel insurance
              Container(
                height: displaySize(context).height * 0.11,
                margin: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  bottom: 20,
                ),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: kGrey100,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: TabBarView(
                  children: [
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.lens,
                                  size: 15,
                                  color: kGrey400,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'Medical expanses',
                                    style: TextStyle(
                                        color: kGrey400, fontSize: 12),
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
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.lens,
                                  size: 15,
                                  color: kGrey400,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'Trip cancellation (illnesss, accident, death)',
                                    style: TextStyle(
                                        color: kGrey400, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.lens,
                                  size: 15,
                                  color: kGrey400,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'Assistance services',
                                    style: TextStyle(
                                        color: kGrey400, fontSize: 12),
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
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.lens,
                                  size: 15,
                                  color: kGrey400,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'Medical expanses',
                                    style: TextStyle(
                                        color: kGrey400, fontSize: 12),
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
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.lens,
                                  size: 15,
                                  color: kGrey400,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'Trip cancellation (illnesss, accident, death)',
                                    style: TextStyle(
                                        color: kGrey400, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.lens,
                                  size: 15,
                                  color: kGrey400,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'Assistance services',
                                    style: TextStyle(
                                        color: kGrey400, fontSize: 12),
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
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.lens,
                                  size: 15,
                                  color: kGrey400,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'Medical expanses',
                                    style: TextStyle(
                                        color: kGrey400, fontSize: 12),
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
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.lens,
                                  size: 15,
                                  color: kGrey400,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'Trip cancellation (illnesss, accident, death)',
                                    style: TextStyle(
                                        color: kGrey400, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.lens,
                                  size: 15,
                                  color: kGrey400,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'Assistance services',
                                    style: TextStyle(
                                        color: kGrey400, fontSize: 12),
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

              //Bags
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
                        'Bags',
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
                      child: GestureDetector(
                        onTap: () => setState(() => _choose_bag = 0),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: _choose_bag == 0 ? kGrey200 : kWhite,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: kGrey500,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/icons/bag-2.png'),
                                        color: kGrey600,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 10,
                                      ),
                                      child: Text(
                                        'Cabin baggage',
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
                                margin: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: displaySize(context).width * 0.07,
                                      ),
                                      child: Text(
                                        '56x23x36cm, 7kg',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: kGrey400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Free',
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
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: GestureDetector(
                        onTap: () => setState(() => _choose_bag = 1),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: _choose_bag == 1 ? kGrey200 : kWhite,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: kGrey500,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Icon(
                                        Icons.lens,
                                        color: kGrey600,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 10,
                                      ),
                                      child: Text(
                                        'Add checked baggage',
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
                                margin: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: displaySize(context).width * 0.07,
                                      ),
                                      child: Text(
                                        '119x81x119cm, 15kg',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: kGrey400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '+ \$7.66',
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

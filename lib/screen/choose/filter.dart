import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/choose-filter/nonstop.dart';
import 'package:lywing/sizes_helpers.dart';

import 'choose-filter/any.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  List<Widget> containers = [
    Any(),
    Nonstop(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
              'Filter',
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
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Stops',
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                      ),
                      Container(
                        height: displaySize(context).height * 0.05,
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: TabBar(
                          isScrollable: true,
                          unselectedLabelColor: kBlue,
                          labelColor: kWhite,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kBlue),
                          tabs: <Widget>[
                            Tab(
                              child: Container(
                                width: displaySize(context).width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: kBlue,
                                    width: 1,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Any',
                                    style: TextStyle(
                                      fontSize: 15,
                                      // color: kBlack,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: displaySize(context).width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: kBlue,
                                    width: 1,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Nonstop',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: displaySize(context).width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: kBlue,
                                    width: 1,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '1 stop',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: displaySize(context).width * 0.3,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: kBlue,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '2 stop',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: displaySize(context).width * 0.3,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: kBlue,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '3 stop',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
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
              Expanded(
                flex: 6,
                child: TabBarView(
                  children: containers,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

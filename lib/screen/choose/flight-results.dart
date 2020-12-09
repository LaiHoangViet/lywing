import 'dart:math';
import 'dart:ui';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/filter.dart';
import 'choose-filter/nonstop.dart';
import 'choose-flight-results/best.dart';
import 'package:lywing/sizes_helpers.dart';

import 'choose-flight-results/cheapest.dart';
import 'choose-flight-results/fastest.dart';
import 'flight-details.dart';

class Flight_Results extends StatefulWidget {
  @override
  _Flight_ResultsState createState() => _Flight_ResultsState();
}

class _Flight_ResultsState extends State<Flight_Results>
    with TickerProviderStateMixin {
  int _value = 0;
  final destination_from = TextEditingController();
  final destination_to = TextEditingController();

  Animation _arrowAnimation;
  AnimationController _arrowAnimationController;

  List ticket = ["12","12","12","12"];

  @override
  void initState() {
    super.initState();
    _arrowAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _arrowAnimation =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController);
  }

  @override
  Widget firstChild() {
    return InkWell(
      child: AnimatedBuilder(
        animation: _arrowAnimation,
        builder: (context, child) => Transform.rotate(
          angle: _arrowAnimation.value,
          child: Icon(
            Icons.autorenew_rounded,
            color: kGrey400,
            size: 30,
          ),
        ),
      ),
      onTap: () {
        _arrowAnimationController.isCompleted
            ? _arrowAnimationController.reverse()
            : _arrowAnimationController.forward();
        setState(() {
          // destination_to.text = destination_from.text;
          destination_from.text = destination_to.text;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              elevation: 0.0,
              bottomOpacity: 0.0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: kBlack,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              centerTitle: true,
              title: Text(
                'SIN - HAN',
                style: TextStyle(
                  color: kBlack,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
              actions: <Widget>[
                Container(
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.filter,
                      color: kBlack,
                      size: 20,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Filter()),
                      );
                    },
                  ),
                ),
              ],
              backgroundColor: kWhite,
            ),
          ),
          body: ListView(
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    // Flight information
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: kWhite,
                        boxShadow: [
                          BoxShadow(
                            color: kGrey200,
                            // spreadRadius: 6,
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          //destination and departure
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          children: <Widget>[
                                            Icon(
                                              MaterialIcons.location_on,
                                              color: kGrey400,
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                top: 6,
                                                bottom: 6,
                                              ),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/icons/Line.png'),
                                              ),
                                            ),
                                            Transform.rotate(
                                              angle: pi / 2,
                                              child: Icon(
                                                Icons.flight,
                                                color: kGrey400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              margin: const EdgeInsets.only(
                                                left: 15,
                                              ),
                                              width:
                                                  displaySize(context).width *
                                                      0.4,
                                              child: Text(
                                                'Singapore (SIN)',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height:
                                                  displaySize(context).height *
                                                      0.05,
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                left: 15,
                                              ),
                                              width:
                                                  displaySize(context).width *
                                                      0.4,
                                              child: Text(
                                                'HaNoi (HAN)',
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
                                Container(
                                  margin: const EdgeInsets.only(
                                    right: 10,
                                  ),
                                  child: firstChild(),
                                ),
                              ],
                            ),
                          ),
                          //date of departure and return date
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: kGrey100,
                              borderRadius:
                                  BorderRadiusDirectional.circular(10.0),
                            ),
                            margin: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Wed, Mar 20',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kGrey500,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kGrey500,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Mon, Mar 25',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kGrey500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //quantity information
                          Container(
                            margin: const EdgeInsets.only(
                              top: 15,
                              bottom: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  width: 130,
                                  color: kWhite,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Icon(
                                          FontAwesomeIcons.exchangeAlt,
                                          size: 15,
                                          color: kGrey600,
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)
                                              .translate('Return'),
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: kGrey600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 130,
                                  color: kWhite,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        margin: const EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              padding: const EdgeInsets.only(
                                                right: 5,
                                              ),
                                              child: Icon(
                                                MaterialIcons
                                                    .supervisor_account,
                                                size: 20,
                                                color: kGrey600,
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                '2',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: kGrey600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              padding: const EdgeInsets.only(
                                                right: 5,
                                              ),
                                              child: Icon(
                                                Icons.child_friendly_sharp,
                                                size: 20,
                                                color: kGrey600,
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                '0',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: kGrey600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          right: 5,
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              padding: const EdgeInsets.only(
                                                right: 5,
                                              ),
                                              child: Icon(
                                                FontAwesomeIcons.suitcase,
                                                size: 15,
                                                color: kGrey600,
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                '0',
                                                style: TextStyle(
                                                  fontSize: 15,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        left: 10,
                        right: 10,
                      ),
                      height: displaySize(context).height * 0.05,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: GestureDetector(
                              onTap: () => setState(() => _value = 0),
                              child: Container(
                                width: displaySize(context).width * 0.35,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: _value == 0 ? kBlue : kWhite,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: kBlue,
                                  ),
                                ),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Best'),
                                  style: TextStyle(
                                    color: _value == 0 ? kWhite : kBlue,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: displaySize(context).width * 0.35,
                            margin: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: GestureDetector(
                              onTap: () => setState(() => _value = 1),
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: _value == 1 ? kBlue : kWhite,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: kBlue,
                                  ),
                                ),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Cheapest'),
                                  style: TextStyle(
                                    color: _value == 1 ? kWhite : kBlue,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: GestureDetector(
                              onTap: () => setState(() => _value = 2),
                              child: Container(
                                width: displaySize(context).width * 0.35,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: _value == 2 ? kBlue : kWhite,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: kBlue,
                                  ),
                                ),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Fastest'),
                                  style: TextStyle(
                                    color: _value == 2 ? kWhite : kBlue,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: GestureDetector(
                              onTap: () => setState(() => _value = 3),
                              child: Container(
                                width: displaySize(context).width * 0.35,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: _value == 3 ? kBlue : kWhite,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: kBlue,
                                  ),
                                ),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Nonstop'),
                                  style: TextStyle(
                                    color: _value == 3 ? kWhite : kBlue,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                          children: [
                            for (var index in ticket ) Container(
                              margin: const EdgeInsets.only(
                                bottom: 20,
                              ),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: kGrey100,
                                    // spreadRadius: 6,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Flight_Details()),
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
                                    //first flight
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          //logo
                                          Container(
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/VJ-1.png'),
                                                width:
                                                displaySize(context)
                                                    .width *
                                                    0.11,
                                                height:
                                                displaySize(context)
                                                    .height *
                                                    0.05,
                                                fit: BoxFit.fill),
                                          ),

                                          Container(
                                            width: displaySize(context)
                                                .width *
                                                0.35,
                                            height: displaySize(context)
                                                .height *
                                                0.1,
                                            margin: const EdgeInsets.only(
                                              left: 10,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: <Widget>[
                                                      //flight time
                                                      Container(
                                                        child: Text(
                                                          '9:35',
                                                          style:
                                                          TextStyle(
                                                            fontSize: 17,
                                                            color: kBlack,
                                                          ),
                                                        ),
                                                      ),

                                                      Container(
                                                        child: Transform
                                                            .rotate(
                                                          angle: pi / 2,
                                                          child: Icon(
                                                            Icons.flight,
                                                            color: kBlue,
                                                          ),
                                                        ),
                                                      ),

                                                      //landing time
                                                      Container(
                                                        child: Text(
                                                          '13:35',
                                                          style:
                                                          TextStyle(
                                                            fontSize: 17,
                                                            color: kBlack,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                //airline
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

                                          //direct flight, 3h 20m
                                          Container(
                                            width: displaySize(context)
                                                .width *
                                                0.3,
                                            height: displaySize(context)
                                                .height *
                                                0.1,
                                            padding:
                                            const EdgeInsets.only(
                                              top: 6,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    AppLocalizations.of(
                                                        context)
                                                        .translate(
                                                        'directflight'),
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

                                    //second flight
                                    Container(
                                      height:
                                      displaySize(context).height *
                                          0.06,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/VJ-1.png'),
                                                width:
                                                displaySize(context)
                                                    .width *
                                                    0.11,
                                                height:
                                                displaySize(context)
                                                    .height *
                                                    0.05,
                                                fit: BoxFit.fill),
                                          ),
                                          Container(
                                            width: displaySize(context)
                                                .width *
                                                0.35,
                                            height: displaySize(context)
                                                .height *
                                                0.1,
                                            margin: const EdgeInsets.only(
                                              left: 10,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: <Widget>[
                                                      //destination and departure
                                                      Container(
                                                        child: Text(
                                                          '14:55',
                                                          style:
                                                          TextStyle(
                                                            fontSize: 17,
                                                            color: kBlack,
                                                          ),
                                                        ),
                                                      ),

                                                      //date of departure and return date
                                                      Container(
                                                        child: Transform
                                                            .rotate(
                                                          angle: pi / 2,
                                                          child: Icon(
                                                            Icons.flight,
                                                            color: kBlue,
                                                          ),
                                                        ),
                                                      ),

                                                      //quantity information
                                                      Container(
                                                        child: Text(
                                                          '17:20',
                                                          style:
                                                          TextStyle(
                                                            fontSize: 17,
                                                            color: kBlack,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                //'HAN -SIN, Vietjet Ari',
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

                                          //direct flight, 3h 20m
                                          Container(
                                            width: displaySize(context)
                                                .width *
                                                0.3,
                                            height: displaySize(context)
                                                .height *
                                                0.1,
                                            padding:
                                            const EdgeInsets.only(
                                              top: 6,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    AppLocalizations.of(
                                                        context)
                                                        .translate(
                                                        'directflight'),
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
                                      height:
                                      displaySize(context).height *
                                          0.05,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/icons/Line-3.png'),
                                      ),
                                    ),

                                    //12 nights in Singapore, the total amount
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              '$index nights ${AppLocalizations.of(context).translate('in')} Singapore',
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
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
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

import 'dart:math';
import 'dart:ui';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'file:///F:/Flutter/lywing/lib/screen/choose/choose-flight-results/best.dart';
import 'file:///F:/Flutter/lywing/lib/screen/choose/choose-flight-results/cheapest.dart';
import 'file:///F:/Flutter/lywing/lib/screen/choose/choose-flight-results/fastest.dart';
import 'package:lywing/screen/choose/filter.dart';
import 'file:///F:/Flutter/lywing/lib/screen/choose/choose-flight-results/nonstop.dart';
import 'package:lywing/sizes_helpers.dart';

class Flight_Results extends StatefulWidget {
  @override
  _Flight_ResultsState createState() => _Flight_ResultsState();
}

class _Flight_ResultsState extends State<Flight_Results>
    with TickerProviderStateMixin {
  final destination_from = TextEditingController();
  final destination_to = TextEditingController();

  Animation _arrowAnimation;
  AnimationController _arrowAnimationController;

  List<Widget> containers = [
    Best(),
    Cheapest(),
    Fastest(),
    Nonstop(),
  ];

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
    return RaisedButton(
      color: kWhite,
      hoverElevation: 0.0,
      highlightElevation: 0.0,
      elevation: 0,
      shape: Border.all(
        width: 0.0,
        color: kWhite,
      ),
      child: AnimatedBuilder(
        animation: _arrowAnimation,
        builder: (context, child) => Transform.rotate(
          angle: _arrowAnimation.value,
          child: Image(
            image: AssetImage('assets/icons/Inverse.png'),
          ),
        ),
      ),
      onPressed: () {
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
                icon: Image.asset('assets/icons/pin-left.png'),
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
                    icon: Image.asset('assets/icons/filter-2.png'),
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
          body: Container(
            child: Column(
              children: <Widget>[
                // Thong tin chuyen bay
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
                      //dia diem den va di
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              'assets/icons/place.png'),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 15,
                                          ),
                                          width:
                                              displaySize(context).width * 0.4,
                                          child: Text(
                                            'Singapore (SIN)',
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
                                    margin: const EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                      right: 157,
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              'assets/icons/Line.png'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              'assets/icons/flights.png'),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 15,
                                          ),
                                          width:
                                              displaySize(context).width * 0.4,
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
                              child: firstChild(),
                            ),
                          ],
                        ),
                      ),
                      //ngay di va ngay ve
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: kGrey100,
                          borderRadius: BorderRadiusDirectional.circular(10.0),
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
                      //thong tin so luong
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
                                    child: Image(
                                      image:
                                          AssetImage('assets/icons/return.png'),
                                      color: kGrey500,
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
                                              color: kGrey600,
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
                                              color: kGrey600,
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

                //Tabbar
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
                        borderRadius: BorderRadius.circular(50), color: kBlue),
                    tabs: <Widget>[
                      Tab(
                        child: Container(
                          width: displaySize(context).width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: kBlue,
                              width: 1,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Best',
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
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: kBlue,
                              width: 1,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Cheapest',
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
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: kBlue,
                              width: 1,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Fastest',
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
                            borderRadius: BorderRadius.circular(50),
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
                    ],
                  ),
                ),

                // View tabbar
                Container(
                  height: displaySize(context).height * 0.53,
                  child: TabBarView(
                    children: containers,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

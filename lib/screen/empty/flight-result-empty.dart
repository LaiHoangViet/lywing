import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Flight_Result_Empty extends StatefulWidget {
  @override
  _Flight_Result_EmptyState createState() => _Flight_Result_EmptyState();
}

class _Flight_Result_EmptyState extends State<Flight_Result_Empty>
    with TickerProviderStateMixin {
  final destination_from = TextEditingController();
  final destination_to = TextEditingController();

  Animation _arrowAnimation;
  AnimationController _arrowAnimationController;

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
            'SIN - HAN',
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
            ),
          ),
          actions: <Widget>[
            Container(
              child: IconButton(
                icon: Image.asset('assets/icons/filter-2.png'),
                onPressed: () {},
              ),
            ),
          ],
          backgroundColor: kWhite,
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
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
                                      image:
                                          AssetImage('assets/icons/place.png'),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 15,
                                      ),
                                      width: displaySize(context).width * 0.4,
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
                                      image:
                                          AssetImage('assets/icons/Line.png'),
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
                                      width: displaySize(context).width * 0.4,
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
                                  image: AssetImage('assets/icons/return.png'),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Container(
              height: displaySize(context).height / 1.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image(
                      image:
                      AssetImage('assets/icons/empty/plane.png'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      'No flights were found',
                      style: TextStyle(
                        fontSize: 22,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: displaySize(context).width * 0.55,
                    child: Text(
                      'We have not found any flights that match your search.',
                      textAlign: TextAlign.center,
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
    );
  }
}

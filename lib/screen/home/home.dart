import 'dart:math';
import 'dart:ui';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_spinbox/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/flight-results.dart';
import 'package:lywing/screen/choose/seclect_date.dart';
import 'package:lywing/sizes_helpers.dart';
import 'SysManager.dart';
import 'choose-quantity/choose-type.dart';
import 'choose-quantity/passengers-bags-classes.dart';
import 'search-location/destination.dart';
import 'search-location/place-to-go.dart';

// class BackendService {
//   static Future<List> getSuggestions(String query) async {
//     await Future.delayed(Duration(seconds: 1));
//     return List.generate(3, (index) {
//       return {'name': query + index.toString(), 'price': Random().nextInt(100)};
//     });
//   }
// }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

enum SingingCharacter { Economy, Premium_Economy, Business }

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final destination_from = TextEditingController();
  final destination_to = TextEditingController();

  int selectedRadio = 1;
  SingingCharacter _character = SingingCharacter.Economy;

  Animation _arrowAnimation;
  AnimationController _arrowAnimationController;

  String _selectedCity;

  String _range = "";

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
            color: kBlue,
            size: 30,
          ),
          // Image(
          //   image: AssetImage('assets/icons/Invert-button.png'),
          // ),
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

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _typeAheadController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          width: displaySize(context).width,
          height: displaySize(context).height,
          color: kGrey100,
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Title
              Container(
                margin: const EdgeInsets.only(
                  bottom: 40,
                ),
                alignment: Alignment.bottomLeft,
                width: 230,
                height: displaySize(context).height * 0.2,
                child: Text(
                  AppLocalizations.of(context)
                      .translate('travelTheWorldMadeSimple'),
                  style: TextStyle(
                    fontSize: 28,
                    color: kGrey600,
                  ),
                ),
              ),
              //Places to come and go
              Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //Tim dia diem
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Icon(
                                            MaterialIcons.location_on,
                                            color: kGrey400,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/icons/Line.png'),
                                          ),
                                        ),
                                        Container(
                                          child: Transform.rotate(
                                            angle: pi / 2,
                                            child: Icon(
                                              Icons.flight,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                      ],
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
                                          child: Place_To_Go(),
                                        ),
                                        SizedBox(
                                          height: displaySize(context).height *
                                              0.05,
                                        ),
                                        Container(
                                          child: Destination(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // icon doi vi tri
                            Container(
                              child: firstChild(),
                            ),
                          ],
                        ),
                      ),

                      // Ngay di va ngay ve
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Seclect_Date()),
                          );
                        },
                        child: Container(
                          width: displaySize(context).height * 0.6,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: kGrey100,
                            borderRadius:
                                BorderRadiusDirectional.circular(10.0),
                          ),
                          margin: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: FileSystemManager.instance.range != null
                                ? Text(
                                    FileSystemManager.instance.range,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kGrey500,
                                    ),
                                  )
                                : Text(
                                    "Choose Date Time",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kGrey500,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  )),

              //Quantity information
              Container(
                margin: EdgeInsets.only(
                  left: displaySize(context).width * 0.04,
                  right: displaySize(context).width * 0.04,
                  bottom: 20,
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      color: Color.fromRGBO(112, 112, 112, 0.0),
                      child: Choose_Type(),
                    ),
                    Container(
                      width: 130,
                      color: Color.fromRGBO(112, 112, 112, 0.0),
                      child: Passengers_Bags_Classes(),
                    ),
                  ],
                ),
              ),

              //button search
              Container(
                width: displaySize(context).width,
                alignment: Alignment.center,
                child: ButtonTheme(
                  minWidth: 500,
                  child: RaisedButton(
                    onPressed: () {
                      print("TEST: ${FileSystemManager.instance.chosen}");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Flight_Results()),
                      );
                    },
                    color: kBlue,
                    hoverElevation: 0.0,
                    highlightElevation: 0.0,
                    elevation: 0,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(
                        width: 0.0,
                        color: kBlue,
                      ),
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate('Search'),
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

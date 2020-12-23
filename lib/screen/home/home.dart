import 'dart:math';
import 'dart:ui';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_spinbox/cupertino.dart';
import 'package:flutter_spinbox/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/flight-results.dart';
import 'package:lywing/screen/choose/seclect_date.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:lywing/common/constants/data.dart';

import 'SysManager.dart';

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

  final focus = FocusNode();
  final TextEditingController _typeAheadController = TextEditingController();
  final TextEditingController _typeAheadController1 = TextEditingController();

  int selectedRadio = 1;
  SingingCharacter _character = SingingCharacter.Economy;

  Animation _arrowAnimation;
  AnimationController _arrowAnimationController;

  String _selectedCity;

  String selection = "Return";
  int typeIcon = 0;

  int value1 = 1;
  int value2 = 1;
  int value3 = 1;

  bool chosen = false;
  bool chosen1 = false;
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

  void search_place() {
    showMaterialModalBottomSheet(
      context: context,
      expand: false,
      backgroundColor: kWhite,
      builder: (context, scrollController) => Container(
        padding: EdgeInsets.only(
          top: displaySize(context).height * 0.06,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: kGrey500,
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                color: kGrey200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TypeAheadFormField(
                textFieldConfiguration: TextFieldConfiguration(
                  decoration: InputDecoration(labelText: "City"),
                  // 2 controller khac nhau
                  controller: this._typeAheadController,
                ),
                suggestionsCallback: (pattern) {
                  return CitiesService.getSuggestions(pattern);
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                  );
                },
                transitionBuilder: (context, suggestionBox, controller) {
                  return suggestionBox;
                },
                onSuggestionSelected: (suggestion) {
                  this._typeAheadController.text = suggestion;
                  setState(() {
                    chosen = !chosen;
                  });
                  Navigator.pop(context);
                },
                validator: (value) =>
                value.isEmpty ? 'Please select a city?' : null,
                onSaved: (value) => FocusScope.of(context).requestFocus(focus),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void search_place1() {
    showMaterialModalBottomSheet(
      context: context,
      expand: false,
      backgroundColor: kWhite,
      builder: (context, scrollController) => Container(
        padding: EdgeInsets.only(
          top: displaySize(context).height * 0.06,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                bottom: 10,
              ),
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: kGrey500,
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                color: kGrey200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TypeAheadFormField(
                textFieldConfiguration: TextFieldConfiguration(
                  decoration: InputDecoration(labelText: "City"),
                  // 2 controller khac nhau
                  controller: this._typeAheadController1,
                ),
                suggestionsCallback: (pattern) {
                  return CitiesService.getSuggestions(pattern);
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                  );
                },
                transitionBuilder: (context, suggestionBox, controller) {
                  return suggestionBox;
                },
                onSuggestionSelected: (suggestion) {
                  this._typeAheadController1.text = suggestion;
                  setState(() {
                    chosen1 = !chosen1;
                  });
                  Navigator.pop(context);
                },
                validator: (value) =>
                value.isEmpty ? 'Please select a city?' : null,
                onSaved: (value) => FocusScope.of(context).requestFocus(focus),
              ),
            ),
          ],
        ),
      ),
    );
  }

  passenger_and_bags() async {
    await showModalBottomSheet(
        context: context,
        backgroundColor: kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        builder: (BuildContext context) {
          return Container(
            child: StatefulBuilder(
              builder: (BuildContext context, State) {
                return Container(
                  // height: displaySize(context).height * 0.67,
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Passengers
                      Container(
                        margin: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('Passengers'),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: kBlack,
                                ),
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
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                child: Icon(
                                                  Icons.person,
                                                  color: kGrey400,
                                                  size: 25,
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 15,
                                                ),
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .translate('Adults'),
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
                                            width: 150,
                                            child: CupertinoSpinBox(
                                              decoration: BoxDecoration(
                                                color: kWhite,
                                              ),
                                              textStyle: TextStyle(
                                                color: kGrey600,
                                              ),
                                              min: 1,
                                              max: 100,
                                              value: 1,
                                              onChanged: (value) {
                                                setState(() {
                                                  value1 = value.toInt();
                                                  print(value);
                                                });
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                child: Icon(
                                                  Icons.child_friendly_sharp,
                                                  size: 20,
                                                  color: kGrey400,
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 15,
                                                ),
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .translate('Infants'),
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
                                            width: 150,
                                            child: CupertinoSpinBox(
                                              decoration: BoxDecoration(
                                                color: kWhite,
                                              ),
                                              textStyle: TextStyle(
                                                color: kGrey600,
                                              ),
                                              min: 1,
                                              max: 100,
                                              value: 1,
                                              onChanged: (value) {
                                                setState(() {
                                                  value2 = value.toInt();
                                                  print(value);
                                                });
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Bags
                      Container(
                        margin: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                AppLocalizations.of(context).translate('Bags'),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: kBlack,
                                ),
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
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                child: Icon(
                                                  FontAwesomeIcons.suitcase,
                                                  size: 15,
                                                  color: kGrey400,
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 15,
                                                ),
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .translate('checkedBags'),
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
                                            width: 150,
                                            child: CupertinoSpinBox(
                                              decoration: BoxDecoration(
                                                color: kWhite,
                                              ),
                                              textStyle: TextStyle(
                                                color: kGrey600,
                                              ),
                                              min: 1,
                                              max: 100,
                                              value: 1,
                                              onChanged: (value) {
                                                setState(() {
                                                  value3 = value.toInt();
                                                  print(value);
                                                });
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Classes
                      Container(
                        margin: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                        ),
                        child: Text(
                          AppLocalizations.of(context).translate('Classes'),
                          style: TextStyle(
                            fontSize: 20,
                            color: kBlack,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Column(
                          children: <Widget>[
                            RadioListTile<SingingCharacter>(
                              title: Text(
                                AppLocalizations.of(context)
                                    .translate('Economy'),
                              ),
                              value: SingingCharacter.Economy,
                              groupValue: _character,
                              onChanged: (SingingCharacter value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                            RadioListTile<SingingCharacter>(
                              title: Text(
                                AppLocalizations.of(context)
                                    .translate('premiumEconomy'),
                              ),
                              value: SingingCharacter.Premium_Economy,
                              groupValue: _character,
                              onChanged: (SingingCharacter value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                            RadioListTile<SingingCharacter>(
                              title: Text(
                                AppLocalizations.of(context)
                                    .translate('Business'),
                              ),
                              value: SingingCharacter.Business,
                              groupValue: _character,
                              onChanged: (SingingCharacter value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        });
  }

  Future type_of_flight() async {
    final option = await showModalBottomSheet(
      context: context,
      backgroundColor: kWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      builder: (context) => Container(
        height: displaySize(context).height * 0.3,
        padding: const EdgeInsets.only(
          top: 25,
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                AppLocalizations.of(context).translate('Type'),
                style: TextStyle(
                  fontSize: 20,
                  color: kBlack,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              width: displaySize(context).width,
              child: Column(
                children: <Widget>[
                  TypeTravel(FontAwesomeIcons.exchangeAlt, "Return", () {
                    typeIcon = 0;
                    Navigator.pop(context,
                        (AppLocalizations.of(context).translate('Return')));
                  }),
                  TypeTravel(FontAwesomeIcons.longArrowAltRight, "oneWay", () {
                    typeIcon = 1;
                    Navigator.pop(context,
                        (AppLocalizations.of(context).translate('oneWay')));
                  }),
                  TypeTravel(MaterialIcons.call_split, "multiCity", () {
                    typeIcon = 2;
                    Navigator.pop(context,
                        (AppLocalizations.of(context).translate('multiCity')));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    setState(() {
      selection = option;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _typeAheadController.dispose();
  }

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
              // Tieu de
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
              // Dia diem den va di
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: InkWell(
                                            onTap: () {
                                              chosen = false;
                                              search_place();
                                            },
                                            child: chosen == false ? Text(
                                              AppLocalizations.of(context)
                                                  .translate('whereYouToGo?'),
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: kGrey500,
                                              ),
                                            ):Text(
                                              _typeAheadController.text,
                                              style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey500,
                                            ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: displaySize(context).height *
                                              0.05,
                                        ),
                                        Container(
                                          child: InkWell(
                                            onTap: () {
                                              chosen1 = false;
                                              search_place1();
                                            },
                                            child: chosen1 == false ? Text(
                                              AppLocalizations.of(context)
                                                  .translate('whereYouToGo?'),
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: kGrey500,
                                              ),
                                            ):Text(
                                              _typeAheadController1.text,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: kGrey500,
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
                            child: FileSystemManager.instance.range != null ? Text(
                              FileSystemManager.instance.range,
                              style: TextStyle(
                                fontSize: 15,
                                color: kGrey500,
                              ),
                            )
                            :Text(
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

              //Thong tin so luong
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
                      child: RaisedButton(
                        onPressed: () {
                          type_of_flight();
                        },
                        elevation: 0,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(
                                typeIcon == 0
                                    ? FontAwesomeIcons.exchangeAlt
                                    : typeIcon == 1
                                        ? FontAwesomeIcons.longArrowAltRight
                                        : MaterialIcons.call_split,
                                size: 15,
                                color: kGrey600,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                typeIcon == 0 ? "Return" : '$selection',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kGrey600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 130,
                      color: Color.fromRGBO(112, 112, 112, 0.0),
                      child: RaisedButton(
                        onPressed: () {
                          passenger_and_bags();
                        },
                        elevation: 0,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.only(
                                      right: 2,
                                    ),
                                    child: Icon(
                                      MaterialIcons.supervisor_account,
                                      size: 20,
                                      color: kGrey600,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      value1.toString(),
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
                                      right: 2,
                                    ),
                                    child: Icon(
                                      Icons.child_friendly_sharp,
                                      size: 20,
                                      color: kGrey600,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      value2.toString(),
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
                                      right: 2,
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.suitcase,
                                      size: 15,
                                      color: kGrey600,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      value3.toString(),
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
                    ),
                  ],
                ),
              ),

              //nut search
              Container(
                width: displaySize(context).width,
                alignment: Alignment.center,
                child: ButtonTheme(
                  minWidth: 500,
                  child: RaisedButton(
                    onPressed: () {
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

class TypeTravel extends StatelessWidget {
  IconData icon;
  String typeTravel;
  Function onPress;

  TypeTravel(this.icon, this.typeTravel, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: RaisedButton(
        onPressed: onPress,
        color: kWhite,
        hoverElevation: 0.0,
        highlightElevation: 0.0,
        elevation: 0,
        shape: Border.all(
          width: 0.0,
          color: kWhite,
        ),
        child: Row(
          children: <Widget>[
            Container(
              child: Icon(
                icon,
                color: kGrey500,
                size: 15,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                AppLocalizations.of(context).translate('$typeTravel'),
                style: TextStyle(
                  fontSize: 15,
                  color: kBlack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

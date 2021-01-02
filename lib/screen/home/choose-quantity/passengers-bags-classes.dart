import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_spinbox/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/home/SysManager.dart';
import 'package:lywing/sizes_helpers.dart';

class Passengers_Bags_Classes extends StatefulWidget {
  @override
  _Passengers_Bags_ClassesState createState() =>
      _Passengers_Bags_ClassesState();
}

class _Passengers_Bags_ClassesState extends State<Passengers_Bags_Classes> {
  int value1 = 1;
  int value2 = 1;
  int value3 = 1;

  void type() {
    showModalBottomSheet<void>(
        context: context,
        backgroundColor: kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        builder: (BuildContext context) {
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
                          AppLocalizations.of(context).translate('Passengers'),
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
                                            FileSystemManager.instance.adults = value1;
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
                                            FileSystemManager.instance.infants = value2;
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
                                            FileSystemManager.instance.bags = value3;
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
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 500,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
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
                            AppLocalizations.of(context).translate('Economy'),
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        minWidth: 500,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
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
                            AppLocalizations.of(context)
                                .translate('premiumEconomy'),
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        minWidth: 500,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
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
                            AppLocalizations.of(context).translate('Business'),
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        type();
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
    );
  }
}

class Passengers_Bags_Classes1 extends StatefulWidget {
  @override
  _Passengers_Bags_Classes1State createState() =>
      _Passengers_Bags_Classes1State();
}

class _Passengers_Bags_Classes1State extends State<Passengers_Bags_Classes1> {
  int value1 = 1;
  int value2 = 1;
  int value3 = 1;

  void type() {
    showModalBottomSheet<void>(
        context: context,
        backgroundColor: kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        builder: (BuildContext context) {
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
                          AppLocalizations.of(context).translate('Passengers'),
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
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 500,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
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
                            AppLocalizations.of(context).translate('Economy'),
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        minWidth: 500,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
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
                            AppLocalizations.of(context)
                                .translate('premiumEconomy'),
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      ButtonTheme(
                        minWidth: 500,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
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
                            AppLocalizations.of(context).translate('Business'),
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        type();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    MaterialIcons.supervisor_account,
                    size: 20,
                    color: kGrey600,
                  ),
                ),
                Container(
                  child: Text(
                    FileSystemManager.instance.adults == null ? "0" : FileSystemManager.instance.adults.toString(),
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
                    FileSystemManager.instance.infants == null ? "0" : FileSystemManager.instance.infants.toString(),
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
                    FileSystemManager.instance.bags == null ? "0" : FileSystemManager.instance.bags.toString(),
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
    );
  }
}

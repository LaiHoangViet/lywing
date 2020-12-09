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

class BackendService {
  static Future<List> getSuggestions(String query) async {
    await Future.delayed(Duration(seconds: 1));
    return List.generate(3, (index) {
      return {'name': query + index.toString(), 'price': Random().nextInt(100)};
    });
  }
}

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
                child: Icon(Icons.close, color: kGrey500,)
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: kGrey200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                  style: TextStyle(
                    fontSize: 17,
                    color: kGrey500,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5.0),
                    prefixIcon: Icon(Icons.search),
                    hintText: AppLocalizations.of(context).translate('Search'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: kWhite,
                        width: 0.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: kWhite,
                        width: 0.0,
                      ),
                    ),
                  ),
                ),
                suggestionsCallback: (pattern) async {
                  // Here you can call http call
                  return await BackendService.getSuggestions(pattern);
                },
                suggestionsBoxDecoration: SuggestionsBoxDecoration(
                  elevation: 0,
                  color: kWhite,
                ),
                itemBuilder: (context, suggestion) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Container(
                            child: Text(
                              AppLocalizations.of(context).translate('Recent'),
                              style: TextStyle(
                                fontSize: 17,
                                color: kGrey500,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            suggestion['name'],
                            style: TextStyle(
                              fontSize: 15,
                              color: kGrey600,
                            ),
                          ),
                        ),
                        Container(
                          child: Container(
                            child: Text(
                              AppLocalizations.of(context).translate('nearBy'),
                              style: TextStyle(
                                fontSize: 17,
                                color: kGrey500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                onSuggestionSelected: (suggestion) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Seclect_Date(),
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void passenger_and_bags() {
    showMaterialModalBottomSheet(
      context: context,
      backgroundColor: kWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      builder: (context, BuildContext) =>
          StatefulBuilder(builder: (context, StateSetter setState) {
        return Container(
          height: displaySize(context).height * 0.62,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Image(
                                          image: AssetImage(
                                              'assets/icons/modal-bottom-sheet/adults.png'),
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
                                      value: 50,
                                      onChanged: (value) => print(value),
                                    )),
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
                                        child: Image(
                                          image: AssetImage(
                                              'assets/icons/modal-bottom-sheet/infants.png'),
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
                                      value: 50,
                                      onChanged: (value) => print(value),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Image(
                                          image: AssetImage(
                                              'assets/icons/modal-bottom-sheet/checked-bags.png'),
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
                                      value: 50,
                                      onChanged: (value) => print(value),
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
                        AppLocalizations.of(context).translate('Economy'),
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
                        AppLocalizations.of(context).translate('Business'),
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
      }),
    );
  }

  void type_of_flight() {
    showMaterialModalBottomSheet(
      context: context,
      expand: false,
      backgroundColor: kWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      builder: (context, scrollController) => Container(
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
                  Container(
                    alignment: Alignment.centerLeft,
                    child: RaisedButton(
                      onPressed: () {},
                      color: kWhite,
                      hoverElevation: 0.0,
                      highlightElevation: 0.0,
                      elevation: 0,
                      shape: Border.all(
                        width: 0.0,
                        color: kWhite,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Icon(
                              FontAwesomeIcons.exchangeAlt,
                              size: 15,
                              color: kGrey600,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              AppLocalizations.of(context).translate('Return'),
                              style: TextStyle(
                                fontSize: 15,
                                color: kBlack,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: RaisedButton(
                      onPressed: () {},
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
                              FontAwesomeIcons.longArrowAltRight,
                              color: kGrey500,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              AppLocalizations.of(context).translate('oneWay'),
                              style: TextStyle(
                                fontSize: 15,
                                color: kBlack,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: RaisedButton(
                      onPressed: () {},
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
                              MaterialIcons.call_split,
                              size: 15,
                              color: kGrey500,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 15,
                            ),
                            child: Text(
                              AppLocalizations.of(context)
                                  .translate('multiCity'),
                              style: TextStyle(
                                fontSize: 15,
                                color: kBlack,
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
    );
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          child: InkWell(
                                            onTap: () {
                                              search_place();
                                            },
                                            child: Text(
                                              AppLocalizations.of(context)
                                                  .translate('whereYouToGo?'),
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
                                              search_place();
                                            },
                                            child: Text(
                                              AppLocalizations.of(context)
                                                  .translate('whereYouToGo?'),
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
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Seclect_Date()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: kGrey100,
                            borderRadius: BorderRadiusDirectional.circular(10.0),
                          ),
                          margin: const EdgeInsets.only(
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
                      width: 130,
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

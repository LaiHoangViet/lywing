import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_spinbox/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/home/SysManager.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Passengers_Bags_Classes extends StatefulWidget {
  @override
  _Passengers_Bags_ClassesState createState() =>
      _Passengers_Bags_ClassesState();
}

class _Passengers_Bags_ClassesState extends State<Passengers_Bags_Classes> {
  int value1 =1;
  int value2 =1;
  int value3 =1;

  int economy =1;
  int preEconomy =2;
  int business =3;

  int selectedRadio;

  loadData() async {
    // Dùng khi xét giá trị dữ liệu cần lưu khi tắt ứng dụng
    // Dùng khi ứng dụng đươc mở
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      print("ADULTS SCREEN: ${prefs.getInt("adults")}");
      // Lấy giá trị từ key "adults" đã xét
      value1 = prefs.getInt("adults");
      value2 = prefs.getInt("infants");
      value3 = prefs.getInt("checkedbags");
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      loadData();
    });
    selectedRadio = 0;

  }

  setSelectedRadio(int val){
    setState(() {
      selectedRadio = val;
    });
  }

  void type(){
    showModalBottomSheet<dynamic>(
        context: context,
        backgroundColor: kWhite,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        builder: (_)=> MyBottomSheet(),
    );
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

class MyBottomSheet extends StatefulWidget {
  @override
  _MyBottomSheetState createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {

  int value1 = 1;
  int value2 = 1;
  int value3 = 1;

  int economy =1;
  int preEconomy =2;
  int business =3;

  int selectedRadio;

  loadData() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      if(FileSystemManager.instance.adults != null && FileSystemManager.instance.infants != null
      && FileSystemManager.instance.bags != null){
        value1 = FileSystemManager.instance.adults;
        value2 = FileSystemManager.instance.infants;
        value3 = FileSystemManager.instance.bags;
      }

      print("Adults : ${value1}");

      prefs.setInt("adults", value1);
      value1 = prefs.getInt("adults");
      prefs.setInt("infants", value2);
      value2 = prefs.getInt("infants");
      prefs.setInt("checkedbags", value3);
      value3 = prefs.getInt("checkedbags");
    });
  }

  @override
  void initState() {
    super.initState();

    setState(() {
      loadData();
    });
    selectedRadio = 0;

  }

  setSelectedRadio(int val){
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displaySize(context).height * 0.7,
      margin: EdgeInsets.only(
        top: displaySize(context).height * 0.03,
        // bottom: displaySize(context).height * 0.03,
        left: displaySize(context).width * 0.07,
        right: displaySize(context).width * 0.07,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Passengers
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    AppLocalizations.of(context).translate('Passengers'),
                    style: TextStyle(
                      fontSize: ResponsiveFlutter.of(context).fontSize(2),
                      color: kBlack,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: ResponsiveFlutter.of(context).hp(2),
                    bottom: ResponsiveFlutter.of(context).hp(2),
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
                                    padding: EdgeInsets.only(
                                      left: displaySize(context).width *
                                          0.01,
                                    ),
                                    child: Text(
                                      AppLocalizations.of(context)
                                          .translate('Adults'),
                                      style: TextStyle(
                                        fontSize:
                                        ResponsiveFlutter.of(context)
                                            .fontSize(1.7),
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
                                  value: value1.toDouble(),
                                  onChanged: (value) {
                                    setState(() {
                                      value1 = value.toInt();
                                      FileSystemManager.instance.adults = value1;
                                      loadData();

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
                                    padding: EdgeInsets.only(
                                      left: displaySize(context).width *
                                          0.01,
                                    ),
                                    child: Text(
                                      AppLocalizations.of(context)
                                          .translate('Infants'),
                                      style: TextStyle(
                                        fontSize:
                                        ResponsiveFlutter.of(context)
                                            .fontSize(1.7),
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
                                  value: value2.toDouble(),
                                  onChanged: (value) {
                                    setState(() {
                                      value2 = value.toInt();
                                      FileSystemManager.instance.infants =
                                          value2;
                                      loadData();
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    AppLocalizations.of(context).translate('Bags'),
                    style: TextStyle(
                      fontSize: ResponsiveFlutter.of(context).fontSize(2),
                      color: kBlack,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: ResponsiveFlutter.of(context).hp(2),
                    bottom: ResponsiveFlutter.of(context).hp(2),
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
                                        fontSize:
                                        ResponsiveFlutter.of(context)
                                            .fontSize(1.7),
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
                                  value: value3.toDouble(),
                                  onChanged: (value) {
                                    setState(() {
                                      value3 = value.toInt();
                                      FileSystemManager.instance.bags =
                                          value3;
                                      loadData();
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
            margin: EdgeInsets.only(
              bottom: ResponsiveFlutter.of(context).hp(2),
            ),
            child: Text(
              AppLocalizations.of(context).translate('Classes'),
              style: TextStyle(
                fontSize: ResponsiveFlutter.of(context).fontSize(2),
                color: kBlack,
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  onTap: (){
                    setSelectedRadio(economy);
                    FileSystemManager.instance.temp = economy;
                  },
                  leading: Radio(
                    value: economy,
                    groupValue: FileSystemManager.instance.temp,
                    activeColor: Colors.blue,
                    onChanged: (val){
                      setState(() {
                        setSelectedRadio(economy);
                      });
                    },
                  ),
                  title: Text("Economy"),
                ),
                ListTile(
                  onTap: (){
                    setSelectedRadio(preEconomy);
                    FileSystemManager.instance.temp = preEconomy;
                  },
                  leading: Radio(
                    value: preEconomy,
                    groupValue: FileSystemManager.instance.temp,
                    activeColor: Colors.blue,
                    onChanged: (val){
                      setState(() {
                        setSelectedRadio(preEconomy);
                      });
                    },
                  ),
                  title: Text("Premium Economy"),
                ),
                ListTile(
                  onTap: (){
                    setSelectedRadio(business);
                    FileSystemManager.instance.temp = business;
                  },
                  leading: Radio(
                    value: business,
                    groupValue: FileSystemManager.instance.temp,
                    activeColor: Colors.blue,
                    onChanged: (val){
                      setState(() {
                        setSelectedRadio(business);
                      });
                    },
                  ),
                  title: Text("Business"),
                ),
                // RadioListTile(
                //   title: Text(
                //     AppLocalizations.of(context).translate('Economy'),
                //     style: TextStyle(
                //       color: kBlack,
                //       fontSize: 15,
                //     ),
                //   ),
                //   value: 0,
                // ),
                // RadioListTile(
                //   value: 0,
                //   title: Text(
                //     AppLocalizations.of(context)
                //         .translate('premiumEconomy'),
                //     style: TextStyle(
                //       color: kBlack,
                //       fontSize: 15,
                //     ),
                //   ),
                // ),
                // RadioListTile(
                //   value: 0,
                //   title: Text(
                //     AppLocalizations.of(context).translate('Business'),
                //     style: TextStyle(
                //       color: kBlack,
                //       fontSize: 15,
                //     ),
                //   ),
                // ),
                // ButtonTheme(
                //   minWidth: 500,
                //   child: RaisedButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     color: kBlue,
                //     hoverElevation: 0.0,
                //     highlightElevation: 0.0,
                //     elevation: 0,
                //     shape: new RoundedRectangleBorder(
                //       borderRadius: new BorderRadius.circular(10.0),
                //       side: BorderSide(
                //         width: 0.0,
                //         color: kBlue,
                //       ),
                //     ),
                //     child: Text(
                //       AppLocalizations.of(context).translate('Economy'),
                //       style: TextStyle(
                //         color: kWhite,
                //         fontSize: 15,
                //       ),
                //     ),
                //   ),
                // ),
                // ButtonTheme(
                //   minWidth: 500,
                //   child: RaisedButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     color: kBlue,
                //     hoverElevation: 0.0,
                //     highlightElevation: 0.0,
                //     elevation: 0,
                //     shape: new RoundedRectangleBorder(
                //       borderRadius: new BorderRadius.circular(10.0),
                //       side: BorderSide(
                //         width: 0.0,
                //         color: kBlue,
                //       ),
                //     ),
                //     child: Text(
                //       AppLocalizations.of(context)
                //           .translate('premiumEconomy'),
                //       style: TextStyle(
                //         color: kWhite,
                //         fontSize: 15,
                //       ),
                //     ),
                //   ),
                // ),
                // ButtonTheme(
                //   minWidth: 500,
                //   child: RaisedButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     color: kBlue,
                //     hoverElevation: 0.0,
                //     highlightElevation: 0.0,
                //     elevation: 0,
                //     shape: new RoundedRectangleBorder(
                //       borderRadius: new BorderRadius.circular(10.0),
                //       side: BorderSide(
                //         width: 0.0,
                //         color: kBlue,
                //       ),
                //     ),
                //     child: Text(
                //       AppLocalizations.of(context).translate('Business'),
                //       style: TextStyle(
                //         color: kWhite,
                //         fontSize: 15,
                //       ),
                //     ),
                //   ),
                // ),
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

  loadData() async {
    // Dùng khi xét giá trị dữ liệu cần lưu khi tắt ứng dụng
    // Dùng khi ứng dụng đươc mở
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Gán giá trị theo key "adults"
      prefs.setInt("adults", value1);
      // Lấy giá trị từ key "adults" đã xét
      value1 = prefs.getInt("adults");
      prefs.setInt("infants", value2);
      value2 = prefs.getInt("infants");
      prefs.setInt("checkedbags", value3);
      value3 = prefs.getInt("checkedbags");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                                        value: value1.toDouble(),
                                        onChanged: (value) {
                                          setState(() {
                                            value1 = value.toInt();
                                            loadData();
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
                                        value: value2.toDouble(),
                                        onChanged: (value) {
                                          setState(() {
                                            value2 = value.toInt();
                                            loadData();
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
                                        value: value3.toDouble(),
                                        onChanged: (value) {
                                          setState(() {
                                            value3 = value.toInt();
                                            loadData();
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
                    value1 == null ? "0" : value1.toString(),
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
                    value2 == null ? "0" : value2.toString(),
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
                    value3 == null ? "0" : value3.toString(),
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

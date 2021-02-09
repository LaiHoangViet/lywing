import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/choose-profile/customer-support.dart';
import 'package:lywing/screen/choose/choose-profile/edit-profile.dart';
import 'package:lywing/screen/choose/choose-profile/my-booking.dart';
import 'package:lywing/screen/choose/choose-profile/my-cards.dart';
import 'package:lywing/screen/choose/choose-profile/notifications.dart';
import 'package:lywing/screen/choose/choose-profile/saved-flights.dart';
import 'package:lywing/screen/choose/choose-profile/settings.dart';
import 'package:lywing/screen/choose/passengers.dart';
import 'package:lywing/sizes_helpers.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView(
          children: <Widget>[
            Container(
              color: kWhite,
              padding: EdgeInsets.only(
                top: 30,
                bottom: 10,
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Ten va nut
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Ha Van Long',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              Container(
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Edit_Profile()),
                                    );
                                  },
                                  splashColor: kWhite,
                                  color: kWhite,
                                  highlightColor: kWhite,
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Dia chi
                        Container(
                          child: Text(
                            'HaNoi, VietNam',
                            style: TextStyle(
                              fontSize: 12,
                              color: kGrey400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Edit_Profile()),
                      );
                    },
                    child: ClipOval(
                      child: Image(
                        width: displaySize(context).width * 0.15,
                        height: displaySize(context).height * 0.15,
                        image: AssetImage('assets/images/Avatar.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 30,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  width: 0,
                  color: kWhite,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    // spreadRadius: 6,
                    blurRadius: 15,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.notifications,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context).translate('Notifications'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Notifications()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey200,
                                height: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.confirmation_number,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context).translate('MyBooking'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => My_Booking()),
                                  );
                                },
                              ),
                              // Divider(
                              //   color: kGrey200,
                              //   height: 1,
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.perm_identity,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context).translate('Passengersinfo'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Passengers()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey200,
                                height: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.credit_card,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context).translate('MyCards'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => My_Cards()),
                                  );
                                },
                              ),
                              // Divider(
                              //   color: kGrey200,
                              //   height: 1,
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.star_border,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context).translate('Savedflights'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Saved_Flights()),
                                  );
                                },
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
                top: 30,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  width: 0,
                  color: kWhite,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    // spreadRadius: 6,
                    blurRadius: 15,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.help,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context).translate('CustomerSupport'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Customer_Support()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey200,
                                height: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.find_in_page,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context).translate('Followus'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => Add_Passenger()),
                                  // );
                                },
                              ),
                              // Divider(
                              //   color: kGrey200,
                              //   height: 1,
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.description,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context).translate('TermsConditions'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => Customer_Support()),
                                  // );
                                },
                              ),
                              Divider(
                                color: kGrey200,
                                height: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.security,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context).translate('Guarantee'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => Add_Passenger()),
                                  // );
                                },
                              ),
                              // Divider(
                              //   color: kGrey200,
                              //   height: 1,
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            MaterialIcons.settings,
                            color: kGrey400,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Transform(
                                  transform:
                                      Matrix4.translationValues(-15, 0.0, 0.0),
                                  child: Text(
                                    AppLocalizations.of(context).translate('Settings'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Settings()),
                                  );
                                },
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
    );
  }
}

import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:responsive_flutter/responsive_flutter.dart';
import '../../../sizes_helpers.dart';
import 'login.dart';

class Slash_Screen extends StatefulWidget {
  @override
  _Slash_ScreenState createState() => _Slash_ScreenState();
}

class _Slash_ScreenState extends State<Slash_Screen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: kWhite,
        // height: displaySize(context).height,
        width: displaySize(context).width,
        child: Column(
          children: <Widget>[
            Container(
              width: displaySize(context).width,
              height: displaySize(context).height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/lywing-slash-screen.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SafeArea(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      width: displaySize(context).width,
                      alignment: Alignment.centerRight,
                      child: ButtonTheme(
                        // minWidth: 50,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'SKIP',
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: displaySize(context).width * 0.7,
                    margin: EdgeInsets.only(
                        top: displaySize(context).height * 0.26,
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: AutoSizeText(
                            AppLocalizations.of(context).translate('title1'),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kWhite,
                            ),
                            presetFontSizes: [22,19,16,13],
                            maxLines: 1,
                          ),
                        ),
                        Center(
                          child: AutoSizeText(
                            AppLocalizations.of(context).translate('title2'),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kWhite,
                            ),
                            presetFontSizes: [15,12,9,6],
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                children: <Widget>[
                  Material(
                    elevation: 10,
                    shadowColor: kWhite,
                    borderRadius: BorderRadius.circular(15),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)
                            .translate('enterYourEmail'),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kWhite, width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kWhite, width: 0.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.01,
                    ),
                    child: ButtonTheme(
                      minWidth: 500,
                      height: displaySize(context).height * 0.05,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        color: Color.fromRGBO(0, 120, 255, 1),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: AutoSizeText(
                          AppLocalizations.of(context).translate('login'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: ResponsiveFlutter.of(context).fontSize(2),
                            color: kWhite,
                          ),
                          minFontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.01,
                    ),
                    child: ButtonTheme(
                      minWidth: 500,
                      height: 40,
                      child: RaisedButton(
                        elevation: 0,
                        onPressed: () {},
                        color: kWhite,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(
                            width: 0.2,
                          ),
                        ),
                        child: Text(
                          AppLocalizations.of(context)
                              .translate('registerNewAccount'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: ResponsiveFlutter.of(context).fontSize(1.7),
                            color: kBlack,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.01,
                    ),
                    child: ButtonTheme(
                      minWidth: 500,
                      height: 40,
                      child: RaisedButton(
                        elevation: 0,
                        onPressed: () {},
                        color: kWhite,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(
                            width: 0.2,
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              ('assets/images/google.svg'),
                              width: 15,
                              height: 15,
                            ),
                            Container(
                              width: displaySize(context).width * 0.70,
                              alignment: Alignment.center,
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('signUpWithGoogle'),
                                style: TextStyle(
                                  fontSize: ResponsiveFlutter.of(context).fontSize(1.7),
                                  color: kBlack,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.01,
                    ),
                    // width: displaySize(context).width,
                    child: ButtonTheme(
                      minWidth: 500,
                      height: 40,
                      child: RaisedButton(
                        elevation: 0,
                        onPressed: () {},
                        color: kWhite,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(
                            width: 0.2,
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              ('assets/images/facebook.svg'),
                              width: 15,
                              height: 15,
                            ),
                            Container(
                              width: displaySize(context).width * 0.72,
                              alignment: Alignment.center,
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('loginWithFacebook'),
                                style: TextStyle(
                                  fontSize: ResponsiveFlutter.of(context).fontSize(1.7),
                                  color: kBlack,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(
                      // top: displaySize(context).height * 0.01,
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('alreadyHaveAnAccount?'),
                            style: TextStyle(
                              fontSize: ResponsiveFlutter.of(context).fontSize(1.5),
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: AutoSizeText(
                            AppLocalizations.of(context).translate('login'),
                            style: TextStyle(
                              color: kBlue,
                              fontSize: ResponsiveFlutter.of(context).fontSize(1.5),
                            ),
                            minFontSize: 12,
                            maxLines: 1,
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

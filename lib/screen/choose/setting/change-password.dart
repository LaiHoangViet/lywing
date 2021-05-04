import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:lywing/screen/choose/setting/form-reset-password.dart';

import 'profile-setting.dart';
import 'verify-phone-success.dart';

class Change_Password extends StatefulWidget {
  @override
  _Change_PasswordState createState() => _Change_PasswordState();
}

class _Change_PasswordState extends State<Change_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: InkWell(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: kBlack,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('ResetPassword'),
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(
          left: displaySize(context).width * 0.06,
          right: displaySize(context).width * 0.06,
        ),
        children: [
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.06,
            ),
            child: AutoSizeText(
              AppLocalizations.of(context).translate('Pleaseenteranewpassword'),
              style: TextStyle(
                color: kGrey400,
              ),
              presetFontSizes: [15, 13, 10, 7],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    AppLocalizations.of(context).translate('Password'),
                    style: TextStyle(
                      fontSize: 11,
                      color: kGrey600,
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kGrey500,
                        ),
                      ),
                      hintText: AppLocalizations.of(context)
                          .translate('Enternewpassword'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.04,
            ),
            child: ButtonTheme(
              minWidth: 500,
              height: displaySize(context).height * 0.05,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Verify_Phone_Success()),
                  );
                },
                color: kBlue,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(7.0)),
                child: AutoSizeText(
                  AppLocalizations.of(context).translate('Next'),
                  style: TextStyle(
                    color: kWhite,
                  ),
                  presetFontSizes: [15, 12, 9, 6],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

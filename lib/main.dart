import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lywing/screen/choose/add-passenger.dart';
import 'package:lywing/screen/choose/setting/email-verfication.dart';
import 'package:lywing/screen/choose/setting/profile-setting.dart';
import 'common/app_localizations.dart';
import 'screen/introduce.dart';
import 'screen/users/login/slash-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      supportedLocales: [
        Locale('en', 'US'),
        Locale('vi', 'VN'),
      ],
      // These delegates make sure that the localization data for the proper language is loaded
      localizationsDelegates: [
        // THIS CLASS WILL BE ADDED LATER
        // A class which loads the translations from JSON files
        AppLocalizations.delegate,
        // Built-in localization of basic text for Material widgets
        GlobalMaterialLocalizations.delegate,
        // Built-in localization for text direction LTR/RTL
        GlobalWidgetsLocalizations.delegate,
// Built-in localization of basic text for Material widgets
        GlobalCupertinoLocalizations.delegate,
      ],
      // Returns a locale which will be used by the app
      localeResolutionCallback: (locale, supportedLocales) {
        // Check if the current device locale is supported
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        // If the locale of the device is not supported, use the first one
        // from the list (English, in this case).
        return supportedLocales.first;
      },
      home:
          // Email_Verfication("+08691922945"),
          Introduce(),
      // Profile_Setting(),
      // home: Flight_Result_Empty(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/home/home_screen.dart';
import 'package:lywing/screen/users/login/register.dart';

import '../../../sizes_helpers.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: kWhite,
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
                  Container(
                    margin: EdgeInsets.only(
                        top: 270),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 36,
                              color: kWhite,
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
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Material(
                elevation: 10,
                shadowColor: kWhite,
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kWhite, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kWhite, width: 0.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 15,
              ),
              child: Material(
                elevation: 10,
                shadowColor: kWhite,
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Enter password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kWhite, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kWhite, width: 0.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
                left: 10,
                right: 10,
              ),
              child: ButtonTheme(
                minWidth: 500,
                height: displaySize(context).height * 0.05,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home_Screen()),
                    );
                  },
                  color: kBlue,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: ButtonTheme(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 15, right: 15),
                      child: RaisedButton(
                        elevation: 0,
                        onPressed: () {},
                        color: kWhite,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(
                            width: 0.1,
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/images/search-2.png'),
                              width: 15,
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              child: Text(
                                'Google',
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
                  ),
                  Container(
                    child: ButtonTheme(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 15, right: 15),
                      child: RaisedButton(
                        elevation: 0,
                        onPressed: () {},
                        color: kWhite,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(
                            width: 0.1,
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/images/facebook.png'),
                              width: 15,
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              child: Text(
                                'Facebook',
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
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Don't have account?",
                      style: TextStyle(
                        fontSize: 13,
                        color: kGrey600,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: Text(
                      'Register new account',
                      style: TextStyle(
                        color: kBlue,
                        fontSize: 13,
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

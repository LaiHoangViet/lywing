import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lywing/common/constants.dart';
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
        child: Column(
          children: <Widget>[
            Container(
              width: displaySize(context).width,
              height: 400,
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
                        top: 30,
                        left: 280,
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'SKIP',
                        style: TextStyle(
                          color: kWhite,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 290,
                    margin:
                        EdgeInsets.only(top: 180),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Search, Book and Flight',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              color: kWhite,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Search billions of flights, compare to book flights at right time and travel the world with Lywing.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              color: kWhite,
                              // decoration: TextDecoration.underline,
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
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Column(
                children: <Widget>[
                  Material(
                    elevation: 10,
                    shadowColor: kWhite,
                    borderRadius: BorderRadius.circular(15),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter your Email',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: kWhite, width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: kWhite, width: 0.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 5,
                    ),
                    child: ButtonTheme(
                      minWidth: 350,
                      height: 40,
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
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                    ),
                    child: ButtonTheme(
                      minWidth: 350,
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
                          'Register new account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: kBlack,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                    ),
                    child: ButtonTheme(
                      // minWidth: displaySize(context).width,
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
                            Image(
                              image: AssetImage('assets/images/search-2.png'),
                              width: 15,
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Text(
                                'Sign up with Google',
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
                    margin: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                    ),
                    child: ButtonTheme(
                      // minWidth: 350,
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
                            Image(
                              image: AssetImage('assets/images/facebook.png'),
                              width: 20,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Text(
                                'Login width Facebook',
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
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Already have an account?',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Login',
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
          ],
        ),
      ),
    );
  }
}

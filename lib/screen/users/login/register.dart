import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';

import '../../../sizes_helpers.dart';
import 'login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Material(
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
                  margin:
                      EdgeInsets.only(top: 280),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Register',
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
              minWidth: 350,
              height: 40,
              child: RaisedButton(
                onPressed: () {},
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
              top: 50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 13,
                    color: kGrey300,
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
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
    );
  }
}

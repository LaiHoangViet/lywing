import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/add-passenger.dart';

class Passengers extends StatefulWidget {
  @override
  _PassengersState createState() => _PassengersState();
}

class _PassengersState extends State<Passengers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 3.0,
          leading: IconButton(
            icon: Image.asset('assets/icons/pin-left.png'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            'Passengers',
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          actions: <Widget>[
            Container(
                alignment: Alignment.centerRight,
                child: RaisedButton(
                  onPressed: () {},
                  elevation: 0,
                  highlightElevation: 0,
                  splashColor: kWhite,
                  color: kWhite,
                  highlightColor: kWhite,
                  child: Text(
                    'Done',
                    style: TextStyle(
                      fontSize: 17,
                      color: kBlack,
                    ),
                  ),
                )),
          ],
          backgroundColor: kWhite,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Add_Passenger()),
                  );
                },
                color: kBlue,
                hoverElevation: 0.0,
                highlightElevation: 0.0,
                elevation: 0,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/icons/ios-person-add.png'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        'Add a Passenger',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 15,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: kGrey200,
                    // spreadRadius: 6,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.check_circle,
                      color: kBlue,
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Mr.Phong Van Tran',
                            style: TextStyle(
                              fontSize: 15,
                              color: kBlack,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '15/04/1996',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: Text(
                                  '|',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Passport or ID: 104710',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
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
                    child: IconButton(
                      icon: Image.asset('assets/icons/iconlineedit.png'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 15,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: kGrey200,
                    // spreadRadius: 6,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.check_circle,
                      color: kBlue,
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Ms.May Thao Nguyen',
                            style: TextStyle(
                              fontSize: 15,
                              color: kBlack,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '15/04/1996',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: Text(
                                  '|',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Passport or ID: 104710',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
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
                    child: IconButton(
                      icon: Image.asset('assets/icons/iconlineedit.png'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 15,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: kGrey200,
                    // spreadRadius: 6,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.check_circle,
                      color: kGrey500,
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Ms.Linh Thi Hoang',
                            style: TextStyle(
                              fontSize: 15,
                              color: kBlack,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '15/04/1996',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: Text(
                                  '|',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Passport or ID: 104710',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
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
                    child: IconButton(
                      icon: Image.asset('assets/icons/iconlineedit.png'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 15,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: kGrey200,
                    // spreadRadius: 6,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.check_circle,
                      color: kGrey500,
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Mr.Viet Quoc Hoang',
                            style: TextStyle(
                              fontSize: 15,
                              color: kBlack,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '15/04/1996',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: Text(
                                  '|',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Passport or ID: 104710',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
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
                    child: IconButton(
                      icon: Image.asset('assets/icons/iconlineedit.png'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 15,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: kGrey200,
                    // spreadRadius: 6,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.check_circle,
                      color: kGrey500,
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Mr.Dao Hung Tan',
                            style: TextStyle(
                              fontSize: 15,
                              color: kBlack,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '15/04/1996',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: Text(
                                  '|',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Passport or ID: 104710',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
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
                    child: IconButton(
                      icon: Image.asset('assets/icons/iconlineedit.png'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 15,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: kGrey200,
                    // spreadRadius: 6,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.check_circle,
                      color: kGrey500,
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Ms.Dieu Quang Ly',
                            style: TextStyle(
                              fontSize: 15,
                              color: kBlack,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '15/04/1996',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 5,
                                  right: 5,
                                ),
                                child: Text(
                                  '|',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Passport or ID: 104710',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: kGrey400,
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
                    child: IconButton(
                      icon: Image.asset('assets/icons/iconlineedit.png'),
                      onPressed: () {},
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

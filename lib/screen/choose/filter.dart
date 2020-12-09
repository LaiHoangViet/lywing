import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/choose-filter/nonstop.dart';
import 'package:lywing/sizes_helpers.dart';

import 'choose-filter/any.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  double _currentSliderValue1 = 1;
  double _currentSliderValue2 = 1;
  double _currentSliderValue3 = 1;
  double _currentSliderValue4 = 1;

  bool monVal = false;

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            elevation: 3.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: kBlack,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            title: Text(
              AppLocalizations.of(context).translate('Filter'),
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
                      AppLocalizations.of(context).translate('Done'),
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
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                ),
                height: displaySize(context).height * 0.06,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        right: 15,
                      ),
                      child: GestureDetector(
                        onTap: () => setState(() => _value = 0),
                        child: Container(
                          width: displaySize(context).width * 0.30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: _value == 0 ? kBlue : kWhite,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 1,
                              color: kBlue,
                            ),
                          ),
                          child: Text(
                            AppLocalizations.of(context).translate('Any'),
                            style: TextStyle(
                              color: _value == 0 ? kWhite : kBlue,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: displaySize(context).width * 0.30,
                      margin: const EdgeInsets.only(
                        right: 15,
                      ),
                      child: GestureDetector(
                        onTap: () => setState(() => _value = 1),
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            color: _value == 1 ? kBlue : kWhite,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 1,
                              color: kBlue,
                            ),
                          ),
                          child: Text(
                            AppLocalizations.of(context).translate('Nonstop'),
                            style: TextStyle(
                              color: _value == 1 ? kWhite : kBlue,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 15,
                      ),
                      child: GestureDetector(
                        onTap: () => setState(() => _value = 2),
                        child: Container(
                          width: displaySize(context).width * 0.30,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            color: _value == 2 ? kBlue : kWhite,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 1,
                              color: kBlue,
                            ),
                          ),
                          child: Text(
                            AppLocalizations.of(context).translate('Stops'),
                            style: TextStyle(
                              color: _value == 2 ? kWhite : kBlue,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 15,
                      ),
                      child: GestureDetector(
                        onTap: () => setState(() => _value = 3),
                        child: Container(
                          width: displaySize(context).width * 0.30,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            color: _value == 3 ? kBlue : kWhite,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 1,
                              color: kBlue,
                            ),
                          ),
                          child: Text(
                            AppLocalizations.of(context).translate('1Stop'),
                            style: TextStyle(
                              color: _value == 3 ? kWhite : kBlue,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 15,
                      ),
                      child: GestureDetector(
                        onTap: () => setState(() => _value = 4),
                        child: Container(
                          width: displaySize(context).width * 0.35,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            color: _value == 4 ? kBlue : kWhite,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 1,
                              color: kBlue,
                            ),
                          ),
                          child: Text(
                            AppLocalizations.of(context).translate('2Stop'),
                            style: TextStyle(
                              color: _value == 4 ? kWhite : kBlue,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: kWhite,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            // spreadRadius: 6,
                            blurRadius: 15,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              AppLocalizations.of(context)
                                  .translate('Duration'),
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 15,
                              bottom: 15,
                            ),
                            height: 1,
                            decoration: BoxDecoration(
                              color: kBlack100,
                              border: Border.all(
                                width: 0,
                                color: kBlack100,
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('maxTravelTime'),
                                    style: TextStyle(
                                      color: kBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Text(
                                            AppLocalizations.of(context)
                                                .translate('upTo'),
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 3,
                                              right: 3,
                                            ),
                                            child: Text(
                                              '${_currentSliderValue1.toInt()}',
                                              style: TextStyle(
                                                color: kGrey500,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            AppLocalizations.of(context)
                                                .translate('hours'),
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          left: 20,
                                        ),
                                        child: Text(
                                          '(309 of 412 flights)',
                                          style: TextStyle(
                                            color: kGrey200,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Slider(
                                    inactiveColor: kGrey100,
                                    activeColor: kBlue,
                                    value: _currentSliderValue1,
                                    min: 0,
                                    max: 412,
                                    label:
                                        _currentSliderValue1.round().toString(),
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentSliderValue1 = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('Stopover'),
                                    style: TextStyle(
                                      color: kBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        '${_currentSliderValue2.toInt()}',
                                        style: TextStyle(
                                          color: kGrey500,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Text(
                                        AppLocalizations.of(context)
                                            .translate('25Hours'),
                                        style: TextStyle(
                                          color: kGrey500,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Slider(
                                    inactiveColor: kGrey100,
                                    activeColor: kBlue,
                                    value: _currentSliderValue2,
                                    min: 1,
                                    max: 25,
                                    label:
                                        _currentSliderValue2.round().toString(),
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentSliderValue2 = value;
                                      });
                                    },
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
                        top: 10,
                        bottom: 10,
                      ),
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: kWhite,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            // spreadRadius: 6,
                            blurRadius: 15,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              AppLocalizations.of(context).translate('Price'),
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 15,
                              bottom: 15,
                            ),
                            height: 1,
                            decoration: BoxDecoration(
                              color: kBlack100,
                              border: Border.all(
                                width: 0,
                                color: kBlack100,
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: [
                                      Text(
                                        '${_currentSliderValue3.toInt()}đ',
                                        style: TextStyle(
                                          color: kBlack,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Text(
                                        ' - 8.000.000đ',
                                        style: TextStyle(
                                          color: kBlack,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Slider(
                                    inactiveColor: kGrey100,
                                    activeColor: kBlue,
                                    value: _currentSliderValue3,
                                    min: 1,
                                    max: 8000000,
                                    label:
                                        _currentSliderValue3.round().toString(),
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentSliderValue3 = value;
                                      });
                                    },
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
                        top: 10,
                        bottom: 10,
                      ),
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: kWhite,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            // spreadRadius: 6,
                            blurRadius: 15,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              AppLocalizations.of(context).translate('Bags'),
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 15,
                              bottom: 15,
                            ),
                            height: 1,
                            decoration: BoxDecoration(
                              color: kBlack100,
                              border: Border.all(
                                width: 0,
                                color: kBlack100,
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Checkbox(
                                  value: monVal,
                                  onChanged: (bool value) {
                                    setState(() {
                                      monVal = value;
                                    });
                                  },
                                ),
                                Container(
                                  width: displaySize(context).width * 0.8,
                                  child: Text(
                                    AppLocalizations.of(context).translate(
                                        'includeFlightsWithoutCheckedBaggage'),
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
            ],
          ),
        ),
      ),
    );
  }
}

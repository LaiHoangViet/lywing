import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lywing/common/constants/colors.dart';
import 'package:intl/intl.dart';
import 'package:lywing/screen/home/SysManager.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:lywing/sizes_helpers.dart';

import 'flight-results.dart';

class Seclect_Date extends StatefulWidget {
  @override
  _Seclect_DateState createState() => _Seclect_DateState();
}

class _Seclect_DateState extends State<Seclect_Date> {
  String _firstDate;
  String _secondDate;

  //
  // void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
  //   setState(() {
  //     _firstDate =  DateFormat('dd/MM/yyyy').format(args.value.startDate).toString();
  //     _secondDate = DateFormat('dd/MM/yyyy').format(args.value.startDate).toString();
  //   });
  //   FileSystemManager.instance.firstDate = _firstDate;
  //   FileSystemManager.instance.secondDate = _secondDate;
  //
  //   print(_firstDate);
  //   print(_secondDate);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
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
            'Pick a Date',
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: displaySize(context).height * 0.8,
              child: ScrollableCleanCalendar(
                onRangeSelected: (firstDate,secondDate) {
                  _firstDate = DateFormat('yyyy-MM-dd').format(firstDate);
                  _secondDate = DateFormat('yyyy-MM-dd').format(secondDate);
                  FileSystemManager.instance.firstDate = _firstDate;
                  FileSystemManager.instance.secondDate = _secondDate;
                  print(_firstDate);
                },
                locale: 'en',
                minDate: DateTime.now(),
                maxDate: DateTime.now().add(
                  Duration(days: 365),
                ),
                renderPostAndPreviousMonthDates: true,
              ),
              // SfDateRangePicker(
              //   onSelectionChanged: _onSelectionChanged,
              //   selectionMode: DateRangePickerSelectionMode.range,
              //   initialSelectedRange: PickerDateRange(
              //       DateTime.now().subtract(const Duration(days: 0)),
              //       DateTime.now().add(const Duration(days: 0))),
              // ),
            ),
            RaisedButton(
              color: kBlue,
              hoverElevation: 0.0,
              highlightElevation: 0.0,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(
                  width: 0.0,
                  color: kBlue,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Submit',
                style: TextStyle(
                  fontSize: 15,
                  color: kWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

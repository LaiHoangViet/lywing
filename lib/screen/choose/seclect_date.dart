import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lywing/common/constants/colors.dart';
import 'package:intl/intl.dart';
import 'package:lywing/screen/home/SysManager.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:lywing/sizes_helpers.dart';

import 'flight-results.dart';

class Seclect_Date extends StatefulWidget {
  @override
  _Seclect_DateState createState() => _Seclect_DateState();
}

class _Seclect_DateState extends State<Seclect_Date> {
  String _range;

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      _range =
          DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
          "                 -                " +
              DateFormat('dd/MM/yyyy')
                  .format(args.value.endDate ?? args.value.startDate)
                  .toString();
    });
    FileSystemManager.instance.range = _range;

    print(_range);
  }

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
              height: displaySize(context).height * 0.7,
              child: SfDateRangePicker(
                onSelectionChanged: _onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.range,
                initialSelectedRange: PickerDateRange(
                    DateTime.now().subtract(const Duration(days: 0)),
                    DateTime.now().add(const Duration(days: 0))),
              ),
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

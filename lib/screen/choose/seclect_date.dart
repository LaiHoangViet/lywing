import 'package:flutter/material.dart';
import 'package:lywing/common/constants/colors.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:lywing/sizes_helpers.dart';

import 'flight-results.dart';

class Seclect_Date extends StatefulWidget {
  @override
  _Seclect_DateState createState() => _Seclect_DateState();
}

class _Seclect_DateState extends State<Seclect_Date> {
  String _selectedDate;
  String _dateCount;
  String _range;
  String _rangeCount;

  @override
  void initState() {
    _selectedDate = '';
    _dateCount = '';
    _range = '';
    _rangeCount = '';
    super.initState();
  }
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      } else if (args.value is DateTime) {
        _selectedDate = args.value;
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          leading: IconButton(
            icon: Image.asset('assets/icons/pin-left.png'),
            onPressed: (){
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
        child:  Column(
          children: <Widget>[
            Container(
              height: displaySize(context).height * 0.7,
              child: SfDateRangePicker(
                onSelectionChanged: _onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.range,
                initialSelectedRange: PickerDateRange(
                    DateTime.now().subtract(const Duration(days: 4)),
                    DateTime.now().add(const Duration(days: 3))),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Flight_Results()),
                );
              },
              child: Text(
                'Submit',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateTimeRange {

}

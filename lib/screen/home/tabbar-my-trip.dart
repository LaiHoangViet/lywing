import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/empty/my-trip-empty.dart';
import '../../sizes_helpers.dart';
import 'my-trip.dart';

class TabbarMy_Trip extends StatefulWidget {
  @override
  _TabbarMy_TripState createState() => _TabbarMy_TripState();
}

class _TabbarMy_TripState extends State<TabbarMy_Trip> {
  List<Widget> containers = [
    My_Trip(),
    My_Trip_Empty(),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Container(
              padding:const EdgeInsets.only(
                top: 20,
              ) ,
              width: displaySize(context).width,
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  width: 0.0,
                  color: kWhite,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    // spreadRadius: 6,
                    blurRadius: 15,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: kWhite,
                title: Text(
                  'My Trip',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 34,
                    color: kBlack,
                  ),
                ),
                bottom: PreferredSize(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: TabBar(
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(left: 10, right: 10),
                      indicatorColor: kBlue,
                      labelColor: kBlue,
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            'Upcoming',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'History',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: containers,
          ),
        ),
      ),
    );
  }
}

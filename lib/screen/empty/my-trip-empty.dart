import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';

import '../../sizes_helpers.dart';


class My_Trip_Empty extends StatefulWidget {
  @override
  _My_Trip_EmptyState createState() => _My_Trip_EmptyState();
}

class _My_Trip_EmptyState extends State<My_Trip_Empty> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: displaySize(context).width,
        child: Column(
          children: <Widget>[
            // Container(
            //   alignment: Alignment.bottomLeft,
            //   width: displaySize(context).width,
            //   height: displaySize(context).height * 0.13,
            //   padding: const EdgeInsets.only(
            //     left: 10,
            //     right: 10,
            //   ),
            //   decoration: BoxDecoration(
            //     color: kWhite,
            //     border: Border.all(
            //       width: 0.0,
            //       color: kWhite,
            //     ),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey,
            //         // spreadRadius: 6,
            //         blurRadius: 6,
            //         offset: Offset(0, 1), // changes position of shadow
            //       ),
            //     ],
            //   ),
            //   child: Text(
            //     'Watch',
            //     style: TextStyle(
            //       fontSize: 32,
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
            Container(
              height: displaySize(context).height / 1.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image(
                      image:
                      AssetImage('assets/icons/empty/ticket-2.png'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      'No history trip',
                      style: TextStyle(
                        fontSize: 22,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: displaySize(context).width * 0.55,
                    child: Text(
                      'All your history trip will show up here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: kGrey300,
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


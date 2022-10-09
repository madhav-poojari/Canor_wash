import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:my_app/view/availableTimes.dart';
import 'package:my_app/view/report_screen.dart';

class sideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(255, 200, 190, 1),
        child: Center(
            child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListTile(
              tileColor: Color.fromRGBO(255, 200, 190, 1),
              minVerticalPadding: 7,
              title: Text('Book a Wash'),
              onTap: () {
                Navigator.popAndPushNamed(context, AvailableTimes.routename);
              },
            ),
            ListTile(
              minVerticalPadding: 7,
              title: Text('Feedback Report'),
              onTap: () {
                Navigator.popAndPushNamed(context, ReportScreen.routename);
              },
            ),
            ListTile(
              minVerticalPadding: 7,
              title: Text('Set an Alarm'),
            ),
            ListTile(
              minVerticalPadding: 7,
              title: Text('My washes'),
            ),
          ],
        )) // Populate the Drawer in the next step.
        );
  }
}

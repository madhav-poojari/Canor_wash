import 'package:flutter/material.dart';
import 'package:my_app/view/side_drawer.dart';

import 'view/booking_tile_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  Widget BookingWidget() {
    return BookingsTile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: sideDrawer()),
      appBar: AppBar(title: Text("Canor Wash")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // height: 400,
        // width: 300,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(255, 204, 204, 1),
              Color.fromRGBO(204, 230, 255, 1)
            ])),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return BookingWidget();
            }),
      ),
    );
  }
}

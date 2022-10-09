import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AvailableTimes extends StatefulWidget {
  static const routename = "/availabletimes";

  @override
  State<AvailableTimes> createState() => _AvailableTimesState();
}

class _AvailableTimesState extends State<AvailableTimes> {
  List<int> book = [4, 7, 9, 10, 24];
  int selectedNode = -1;

  int givecase(int i, int selectednode, List<int> booked) {
    if (booked.contains(i)) return 0;
    if (i == selectednode)
      return 1;
    else
      return 2;
  }

  Widget casey(int i, List<int> booked) {
    if (booked.contains(i)) {
      return OutlinedButton(
          style: ButtonStyle(
              side: MaterialStateProperty.all(BorderSide(
                  color: Colors.grey, width: 1.50, style: BorderStyle.solid))),
          onPressed: null,
          child: Text(
            "$i:00",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ));
    }
    if (selectedNode == i) {
      return OutlinedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
              side: MaterialStateProperty.all(BorderSide(
                  color: Colors.green, width: 1.50, style: BorderStyle.solid))),
          onPressed: () {},
          child: Text(
            "$i:00",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ));
    } else {
      return OutlinedButton(
          style: ButtonStyle(
              side: MaterialStateProperty.all(BorderSide(
                  color: Colors.green, width: 1.50, style: BorderStyle.solid))),
          onPressed: () {
            setState(() {
              print(i);
              selectedNode = i;
            });
          },
          child: Text(
            "$i:00",
            style: const TextStyle(color: Colors.green, fontSize: 20),
          ));
    }
  }

  List<Widget> timeslots(List<int> booked) {
    return [
      for (int i = 1; i < 25; i++)
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: casey(i, booked),
        )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Availabile Slots"),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromRGBO(255, 204, 204, 1),
                Color.fromRGBO(204, 230, 255, 1)
              ])),
          // alignment: Alignment.centerRight,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                // color: Colors.red,
                height: 50,
                // flex: 5,
                child: ListView(
                  // ma: EdgeInsets.symmetric(horizontal: ),
                  scrollDirection: Axis.horizontal,
                  children: timeslots(book),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                    alignment: Alignment.topLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("confirm"))),
              )
              // Flexible(
              //     flex: 0,
              //     child:
              //         ElevatedButton(onPressed: () {}, child: Text("confirm")))
            ],
          ),
        ),
      ),
    );
  }
}

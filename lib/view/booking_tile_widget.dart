import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class BookingsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 12,
        color: const Color.fromRGBO(222, 216, 250, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Colors.white),
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [Text("Location"), Text("Time")],
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.width * 0.167,
        ));

    // Card(
    //   color: const Color.fromRGBO(222, 216, 250, 1),
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(15),
    //     side: const BorderSide(color: Colors.white),
    //   ),
    //   elevation: 16,
    //   child: ListTile(
    //     leading: const Icon(Icons.list),
    //     trailing: const Icon(Icons.delete_outline,
    //         size: 40, color: Color.fromRGBO(254, 59, 136, 1)),
    //     title: Text("location floor"),
    //     subtitle: Text("Time"),
    //   ),
    // );
  }
}

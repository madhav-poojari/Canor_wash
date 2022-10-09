import 'package:flutter/material.dart';

enum Location { A1, BH1, BH2, MMB }

class Booking {
  String rollnum;
  String name;
  Location place;
  int floor;
  Booking({ required this.floor,required this.place,required this.rollnum ,required this.name});
}

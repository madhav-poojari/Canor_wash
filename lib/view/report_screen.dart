import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});
  static const routename ="/report_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Report a Problem"),),
      body: Text("problemo"),
    );
  }
}
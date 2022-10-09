import 'package:flutter/material.dart';
import 'package:my_app/view/availableTimes.dart';
import 'package:my_app/view/report_screen.dart';
import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class Palette {
  static const MaterialColor kToDark = const MaterialColor(
    0xffFFCCCC, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color.fromRGBO(255, 204, 204, 1), //10%
      100: const Color.fromRGBO(255, 204, 204, 1), //20%
      200: const Color(0xffa04332), //30%
      300: const Color(0xff89392b), //40%
      400: const Color(0xff733024), //50%
      500: const Color(0xff5c261d), //60%
      600: const Color(0xff451c16), //70%
      700: const Color(0xff2e130e), //80%
      800: const Color(0xff170907), //90%
      900: const Color(0xff000000), //100%
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        // primarySwatch: Palette.kToDark,
        // primarySwatch: ThemeData.dark(),
      ),
      home: const HomePage(),
      routes: {
        // '/': (context) => const FirstScreen(),
        ReportScreen.routename: (context) => ReportScreen(),
        AvailableTimes.routename: (context) => AvailableTimes(),
      },
    );
  }
}

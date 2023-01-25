import 'package:finance_app/screens/statistics.dart';
import 'package:finance_app/screens/statistics.dart';
import 'package:finance_app/screens/contacts_screen.dart';
import 'package:finance_app/screens/test_screen.dart';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/statistics",
      theme: ThemeData(
        //primarySwatch: Colors.blueGrey,
        primaryColor: Colors.white,
      ),
      routes: {
        "/": (context) => Statistics(),
        "/statistics": (context) => Statistics(),
        "/contacts": (context) => Statistics()
      },
    );
  }
}

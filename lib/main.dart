import 'package:finance_app/screens/statistics.dart';
import 'package:finance_app/screens/statistics.dart';
import 'package:finance_app/screens/contacts_screen.dart';
import 'package:finance_app/screens/home_screen.dart';
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
      title: 'Finance app wallet',
      initialRoute: "/statistics",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      routes: {
        "/": (context) => HomeScreen(),
        "/statistics": (context) => Statistics(),
        "/contacts": (context) => ContactsScreen()
      },
    );
  }
}

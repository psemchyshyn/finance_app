import 'package:finance_app/screens/contacts_screen.dart';
import 'package:finance_app/screens/test_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance app',
      theme: ThemeData(
        //primarySwatch: Colors.blueGrey,
        primaryColor: Colors.white,
      ),
      home: ContactsScreen(),
    );
  }
}

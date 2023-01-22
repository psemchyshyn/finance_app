import 'package:finance_app/screens/test_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Concentration',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: TestScreen.routeName,
      routes: {
        TestScreen.routeName: (context) => TestScreen(),
      },
    );
  }
}

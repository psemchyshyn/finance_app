import 'package:finance_app/utils/constants/app_strings.dart';
import 'package:finance_app/widgets/payment_list/payment_list.dart';
import 'package:finance_app/widgets/priority_payments/priority_payment_button.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  static const String routeName = "/test";

  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PriorityPaymentButton(
            onPressed: () {},
            text: "TopUp",
          ),
        ],
      )),
    );
  }
}

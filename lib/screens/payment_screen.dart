import 'package:finance_app/business_logic/app_contract.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  final AppContact contact;

  PaymentPage({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Column(
        children: <Widget>[
          Text('You are paying to: ${contact.name}'),
          // Add the payment form here
        ],
      ),
    );
  }
}
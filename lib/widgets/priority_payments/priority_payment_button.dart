import 'package:finance_app/utils/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PriorityPaymentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const PriorityPaymentButton(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        IconButton(icon: Icon(Icons.home) ,onPressed: onPressed),
        Text(
          text,
          style: AppTextStyles.plbText,
        )
      ]),
    );
  }
}

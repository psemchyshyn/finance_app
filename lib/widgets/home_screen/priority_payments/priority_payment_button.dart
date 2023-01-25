import 'package:finance_app/utils/constants/app_colors.dart';
import 'package:finance_app/utils/constants/app_sizes.dart';
import 'package:finance_app/utils/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PriorityPaymentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String assetPath;
  final String text;

  const PriorityPaymentButton(
      {super.key,
      required this.assetPath,
      required this.onPressed,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: AppBorders.plbBorderRadius,
              color: AppColors.textBlack),
          width: AppSizes.ppSize,
          height: AppSizes.ppSize,
          child: MaterialButton(
            onPressed: onPressed,
            child: Image(image: AssetImage(assetPath)),
          ),
        ),
        Text(
          text,
          style: AppTextStyles.plbText,
        )
      ]),
    );
  }
}

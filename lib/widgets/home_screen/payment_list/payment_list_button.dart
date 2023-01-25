import 'package:finance_app/utils/constants/app_colors.dart';
import 'package:finance_app/utils/constants/app_sizes.dart';
import 'package:finance_app/utils/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentListButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String imagePath;

  PaymentListButton(
      {required this.imagePath, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.appGray,
              borderRadius: AppBorders.plbBorderRadius),
          height: AppSizes.plbSize,
          width: AppSizes.plbSize,
          child: MaterialButton(
              onPressed: onPressed,
              child: Container(
                height: AppSizes.plbSize * AppSizes.plbIconRatio,
                child: Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fitHeight,
                ),
              )),
        ),
        Container(
            width: AppSizes.plbSize,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: AppTextStyles.plbText,
            ))
      ]),
    );
  }
}

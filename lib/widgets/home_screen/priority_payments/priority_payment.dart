import 'package:finance_app/utils/constants/app_colors.dart';
import 'package:finance_app/utils/constants/app_image_paths.dart';
import 'package:finance_app/utils/constants/app_sizes.dart';
import 'package:finance_app/utils/constants/app_strings.dart';
import 'package:finance_app/widgets/home_screen/priority_payments/priority_payment_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PriorityPayment extends StatelessWidget {
  const PriorityPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: AppSizes.ppMaxSize),
      margin: const EdgeInsets.all(AppSizes.ppHorizontalEdgeInsects),
      decoration: BoxDecoration(
          color: AppColors.primaryWhite,
          borderRadius: AppBorders.ppBorderRadius),
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: AppSizes.ppHorizontalEdgeInsects,
            vertical: AppSizes.ppVerticalEdgeInsects),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          PriorityPaymentButton(
            assetPath: ImagePaths.ppTopUp,
            text: PpString.ppSend,
            onPressed: () {},
          ),
          PriorityPaymentButton(
            assetPath: ImagePaths.ppSend,
            text: PpString.ppSend,
            onPressed: () {},
          ),
          PriorityPaymentButton(
            assetPath: ImagePaths.ppRequest,
            text: PpString.ppRequest,
            onPressed: () {},
          ),
          PriorityPaymentButton(
            assetPath: ImagePaths.ppHistory,
            text: PpString.ppHistory,
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}

import 'package:finance_app/utils/constants/app_image_paths.dart';
import 'package:finance_app/utils/constants/app_sizes.dart';
import 'package:finance_app/utils/constants/app_strings.dart';
import 'package:finance_app/utils/constants/app_text_styles.dart';
import 'package:finance_app/widgets/home_screen/payment_list/payment_list_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentList extends StatelessWidget {
  const PaymentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.plEdgeInsects),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.paymentList,
              style: AppTextStyles.plText,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PaymentListButton(
                    imagePath: ImagePaths.plbInternet,
                    text: PlbString.plbInternet,
                    onPressed: () {}),
                PaymentListButton(
                    imagePath: ImagePaths.plbElectricity,
                    text: PlbString.plbElectricity,
                    onPressed: () {}),
                PaymentListButton(
                    imagePath: ImagePaths.plbVoucher,
                    text: PlbString.plbVoucher,
                    onPressed: () {}),
                PaymentListButton(
                    imagePath: ImagePaths.plbAssurance,
                    text: PlbString.plbAssurance,
                    onPressed: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PaymentListButton(
                    imagePath: ImagePaths.plbMobileCredit,
                    text: PlbString.plbMobileCredit,
                    onPressed: () {}),
                PaymentListButton(
                    imagePath: ImagePaths.plbBill,
                    text: PlbString.plbBill,
                    onPressed: () {}),
                PaymentListButton(
                    imagePath: ImagePaths.plbMerchant,
                    text: PlbString.plbMerchant,
                    onPressed: () {}),
                PaymentListButton(
                    imagePath: ImagePaths.plbMore,
                    text: PlbString.plbMore,
                    onPressed: () {}),
              ],
            ),
          ]),
    );
  }
}

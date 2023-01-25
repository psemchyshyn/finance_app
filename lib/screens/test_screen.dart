import 'package:finance_app/utils/constants/app_colors.dart';
import 'package:finance_app/utils/constants/app_image_paths.dart';
import 'package:finance_app/utils/constants/app_sizes.dart';
import 'package:finance_app/utils/constants/app_strings.dart';
import 'package:finance_app/widgets/home_screen/background_gradient.dart';
import 'package:finance_app/widgets/home_screen/general_info/available_money.dart';
import 'package:finance_app/widgets/home_screen/general_info/general_info.dart';
import 'package:finance_app/widgets/home_screen/general_info/notification_button.dart';
import 'package:finance_app/widgets/home_screen/general_info/profile_button.dart';
import 'package:finance_app/widgets/home_screen/payment_list/payment_list.dart';
import 'package:finance_app/widgets/home_screen/priority_payments/priority_payment.dart';
import 'package:finance_app/widgets/home_screen/priority_payments/priority_payment_button.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  static const String routeName = "/test";

  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const GeneralInfo(
              availableMoney: 117.33,
              profilePicturePath: ImagePaths.user1,
              text: AppStrings.availableMoney,
            )
          ],
        ),
      ),
    ));
  }
}

import 'package:finance_app/utils/constants/app_colors.dart';
import 'package:finance_app/utils/constants/app_image_paths.dart';
import 'package:finance_app/utils/constants/app_sizes.dart';
import 'package:finance_app/utils/constants/app_strings.dart';
import 'package:finance_app/widgets/bottom_nav_bar.dart';
import 'package:finance_app/widgets/home_screen/background_gradient.dart';
import 'package:finance_app/widgets/home_screen/general_info/general_info.dart';
import 'package:finance_app/widgets/home_screen/payment_list/payment_list.dart';
import 'package:finance_app/widgets/home_screen/priority_payments/priority_payment.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, 
        backgroundColor: const Color(0xff6f12f6),
        child: const Icon(Icons.qr_code, size: 32),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
      child: Stack(
        children: [
          const Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: HomeScreenGradient()),
          const Positioned(
              top: GeneralInfoAlignment.giTop,
              bottom: 50,
              // bottom: GeneralInfoAlignment.giBottom,
              left: GeneralInfoAlignment.giLeft,
              right: GeneralInfoAlignment.giRight,
              child: GeneralInfo(
                availableMoney: 450.54,
                profilePicturePath: ImagePaths.user1,
                text: AppStrings.availableMoney,
              )),
          Positioned(
            top: GeneralInfoAlignment.plTop,
            left: GeneralInfoAlignment.plLeft,
            right: GeneralInfoAlignment.plRight,
            bottom: GeneralInfoAlignment.plBottom,
            child: Container(
              padding: const EdgeInsets.only(top: AppSizes.ppPadding),
              decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  borderRadius: AppBorders.ppBorderRadiusPartial),
              child: const PaymentList()
            ),
          ),
          const Positioned(
              top: GeneralInfoAlignment.ppTop,
              // bottom: 700,
              left: GeneralInfoAlignment.ppLeft,
              right: GeneralInfoAlignment.ppRight,
              child: PriorityPayment()),
        ],
      ),
    )
  );
  }
}

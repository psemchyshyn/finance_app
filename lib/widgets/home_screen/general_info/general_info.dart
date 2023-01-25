import 'package:finance_app/utils/constants/app_colors.dart';
import 'package:finance_app/utils/constants/app_image_paths.dart';
import 'package:finance_app/utils/constants/app_sizes.dart';
import 'package:finance_app/utils/constants/app_text_styles.dart';
import 'package:finance_app/widgets/home_screen/general_info/available_money.dart';
import 'package:finance_app/widgets/home_screen/general_info/notification_button.dart';
import 'package:finance_app/widgets/home_screen/general_info/profile_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GeneralInfo extends StatelessWidget {
  final double availableMoney;
  final String profilePicturePath;
  final String text;
  const GeneralInfo(
      {super.key,
      required this.availableMoney,
      required this.profilePicturePath,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 200),
      height: GeneralInfoAlignment.giBottom,
      padding: EdgeInsets.symmetric(
          horizontal: AppSizes.plEdgeInsects, vertical: 50),
      decoration: BoxDecoration(
        color: AppColors.textBlack.withOpacity(0.0),
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            ProfileButton(onPressed: () {}, imagePath: profilePicturePath),
            NotificationButton(onPressed: () {}),
          ]),
          Text(text, style: AppTextStyles.homeScreenHelpText),
          AvailableMoney(availableMoney: availableMoney)
        ],
      ),
    );
  }
}

import 'package:finance_app/utils/constants/app_colors.dart';
import 'package:finance_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationButton extends StatelessWidget {
  final VoidCallback onPressed;
  const NotificationButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: AppSizes.profilePicture,
        height: AppSizes.profilePicture,
        decoration: BoxDecoration(
            color: Colors.redAccent.withOpacity(0.0),
            borderRadius: AppBorders.notificationRadius,
            border: Border.all(color: AppColors.primaryWhite)),
        child: MaterialButton(
            padding: EdgeInsets.all(0),
            onPressed: onPressed,
            child: Icon(
              Icons.notifications,
              size: AppSizes.profilePictureIcon,
              color: AppColors.primaryWhite,
            )));
  }
}

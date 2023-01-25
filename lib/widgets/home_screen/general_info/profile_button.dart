import 'package:finance_app/utils/constants/app_image_paths.dart';
import 'package:finance_app/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const ProfileButton(
      {super.key, required this.onPressed, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
          height: AppSizes.profilePicture,
          onPressed: onPressed,
          shape: const CircleBorder(),
          child: const CircleAvatar(
            radius: AppSizes.profilePictureRadius,
            backgroundImage: AssetImage(ImagePaths.user1),
          )),
    );
  }
}

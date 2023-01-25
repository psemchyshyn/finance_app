import 'package:finance_app/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle plText = GoogleFonts.poppins(
      textStyle: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 26,
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.none));
  static TextStyle plbText = GoogleFonts.poppins(
      textStyle: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 12,
          decoration: TextDecoration.none));
  static TextStyle profAvailableMoney = GoogleFonts.poppins(
      textStyle: const TextStyle(
          color: AppColors.primaryWhite,
          fontWeight: FontWeight.w600,
          fontSize: 60,
          decoration: TextDecoration.none));
  static TextStyle homeScreenHelpText = GoogleFonts.poppins(
      textStyle: const TextStyle(
    color: AppColors.appGray,
    fontSize: 12,
    decoration: TextDecoration.none,
  ));
}

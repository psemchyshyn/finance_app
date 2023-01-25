import 'package:finance_app/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle plText = GoogleFonts.poppins(
      textStyle: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 26,
          fontWeight: FontWeight.w700));
  static TextStyle plbText = GoogleFonts.poppins(
      textStyle: const TextStyle(color: AppColors.textBlack, fontSize: 12));
}

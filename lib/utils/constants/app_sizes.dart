import 'package:flutter/cupertino.dart';

class AppSizes {
  static const double plbSize = 70;
  static const double ppSize = 50;
  static const double plbRadius = 20;
  static const double ppRadius = 40;
  static const double plbIconRatio = 0.4;
  static const double plEdgeInsects = 25;
  static const double ppVerticalEdgeInsects = 10;
  static const double ppHorizontalEdgeInsects = 25;
  static const double ppPadding = 50;
  static const double ppMaxSize = 100;
  static const double profilePicture = 40;
  static const double profilePictureIcon = AppSizes.profilePicture * 0.8;
  static const double profilePictureRadius = AppSizes.profilePicture / 2;
  static const double profileRadius = 12;
}

class AppBorders {
  static BorderRadius plbBorderRadius =
      BorderRadius.circular(AppSizes.plbRadius);
  static BorderRadius ppBorderRadius = BorderRadius.circular(AppSizes.ppRadius);
  static BorderRadius ppBorderRadiusPartial =
      BorderRadius.vertical(top: Radius.circular(AppSizes.ppRadius));
  static BorderRadius notificationRadius =
      BorderRadius.circular(AppSizes.profileRadius);
}

class GeneralInfoAlignment {
  static const double giTop = 0;
  static const double giBottom = 235;
  static const double giLeft = 0;
  static const double giRight = 0;
  static const double plTop = 300;
  static const double plBottom = 0;
  static const double plLeft = 0;
  static const double plRight = 0;
  static const double ppTop = GeneralInfoAlignment.giBottom;
  static const double ppLeft = 30;
  static const double ppRight = 30;
}

import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue600,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlackF => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.blueGray700,
        border: Border.all(
          color: appTheme.blueGray500,
          width: 5.h,
        ),
      );
  static BoxDecoration get outlineBluegray500 => BoxDecoration(
        color: appTheme.blueGray700.withOpacity(0.98),
        border: Border.all(
          color: appTheme.blueGray500,
          width: 5.h,
        ),
      );
  static BoxDecoration get outlineBluegray5001 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray500,
          width: 5.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder35 => BorderRadius.circular(
        35.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

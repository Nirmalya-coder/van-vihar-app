import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline text style
  static get headlineLargeBluegray300 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallBluegray300 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeBluegray500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleLargeGillSans =>
      theme.textTheme.titleLarge!.gillSans.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGillSansBluegray500 =>
      theme.textTheme.titleLarge!.gillSans.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleLargeGillSansLightgreenA700 =>
      theme.textTheme.titleLarge!.gillSans.copyWith(
        color: appTheme.lightGreenA700,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get gillSans {
    return copyWith(
      fontFamily: 'Gill Sans',
    );
  }
}

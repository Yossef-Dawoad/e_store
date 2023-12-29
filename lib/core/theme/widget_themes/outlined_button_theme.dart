import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class ECOutlinedButtonTheme {
  ECOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorPalette.dark,
      side: const BorderSide(color: ColorPalette.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: ColorPalette.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: AppSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ColorPalette.light,
      side: const BorderSide(color: ColorPalette.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16,
          color: ColorPalette.textWhite,
          fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: AppSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
    ),
  );
}

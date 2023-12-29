import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class ECElevatedButtonTheme {
  ECElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorPalette.light,
      backgroundColor: ColorPalette.primary,
      disabledForegroundColor: ColorPalette.darkGrey,
      disabledBackgroundColor: ColorPalette.buttonDisabled,
      side: const BorderSide(color: ColorPalette.primary),
      padding: const EdgeInsets.symmetric(
          vertical: AppSizes.buttonHeight, horizontal: 15.0),
      textStyle: const TextStyle(
          fontSize: 16,
          color: ColorPalette.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorPalette.light,
      backgroundColor: ColorPalette.primary,
      disabledForegroundColor: ColorPalette.darkGrey,
      disabledBackgroundColor: ColorPalette.darkerGrey,
      side: const BorderSide(color: ColorPalette.primary),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: ColorPalette.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
    ),
  );
}

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
      foregroundColor: ECColors.light,
      backgroundColor: ECColors.primary,
      disabledForegroundColor: ECColors.darkGrey,
      disabledBackgroundColor: ECColors.buttonDisabled,
      side: const BorderSide(color: ECColors.primary),
      padding: const EdgeInsets.symmetric(vertical: ECSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: ECColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ECSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ECColors.light,
      backgroundColor: ECColors.primary,
      disabledForegroundColor: ECColors.darkGrey,
      disabledBackgroundColor: ECColors.darkerGrey,
      side: const BorderSide(color: ECColors.primary),
      padding: const EdgeInsets.symmetric(vertical: ECSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: ECColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ECSizes.buttonRadius)),
    ),
  );
}

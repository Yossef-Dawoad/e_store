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
      foregroundColor: Palette.light,
      backgroundColor: Palette.primary,
      disabledForegroundColor: Palette.darkGrey,
      disabledBackgroundColor: Palette.buttonDisabled,
      side: const BorderSide(color: Palette.primary),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight, horizontal: 15.0),
      textStyle:
          const TextStyle(fontSize: 16, color: Palette.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Palette.light,
      backgroundColor: Palette.primary,
      disabledForegroundColor: Palette.darkGrey,
      disabledBackgroundColor: Palette.darkerGrey,
      side: const BorderSide(color: Palette.primary),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      textStyle:
          const TextStyle(fontSize: 16, color: Palette.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
    ),
  );
}

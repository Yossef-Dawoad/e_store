import 'package:flutter/material.dart';
import 'widget_themes/appbar_theme.dart';
import 'widget_themes/bottom_sheet_theme.dart';
import 'widget_themes/checkbox_theme.dart';
import 'widget_themes/chip_theme.dart';
import 'widget_themes/elevated_button_theme.dart';
import 'widget_themes/outlined_button_theme.dart';
import 'widget_themes/text_field_theme.dart';
import 'widget_themes/text_theme.dart';

import '../constants/colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: Palette.grey,
    // colorScheme: ColorScheme.fromSeed(
    //   seedColor: ColorPalette.primary,
    //   brightness: Brightness.light,
    // ),
    primaryColor: Palette.primary,
    textTheme: ECTextTheme.lightTextTheme,
    chipTheme: ECChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Palette.white,
    appBarTheme: ECAppBarTheme.lightAppBarTheme,
    checkboxTheme: ECCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: ECBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: ECElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ECOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ECTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: Palette.grey,
    brightness: Brightness.dark,
    primaryColor: Palette.primary,
    textTheme: ECTextTheme.darkTextTheme,
    chipTheme: ECChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Palette.black,
    appBarTheme: ECAppBarTheme.darkAppBarTheme,
    checkboxTheme: ECCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: ECBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: ECElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ECOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ECTextFormFieldTheme.darkInputDecorationTheme,
  );
}

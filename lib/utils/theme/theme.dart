import 'package:flutter/material.dart';
import 'package:e_store/utils/theme/widget_themes/appbar_theme.dart';
import 'package:e_store/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:e_store/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:e_store/utils/theme/widget_themes/chip_theme.dart';
import 'package:e_store/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:e_store/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:e_store/utils/theme/widget_themes/text_field_theme.dart';
import 'package:e_store/utils/theme/widget_themes/text_theme.dart';

import '../constants/colors.dart';

class ECAppTheme {
  ECAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: ECColors.grey,
    brightness: Brightness.light,
    primaryColor: ECColors.primary,
    textTheme: ECTextTheme.lightTextTheme,
    chipTheme: ECChipTheme.lightChipTheme,
    scaffoldBackgroundColor: ECColors.white,
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
    disabledColor: ECColors.grey,
    brightness: Brightness.dark,
    primaryColor: ECColors.primary,
    textTheme: ECTextTheme.darkTextTheme,
    chipTheme: ECChipTheme.darkChipTheme,
    scaffoldBackgroundColor: ECColors.black,
    appBarTheme: ECAppBarTheme.darkAppBarTheme,
    checkboxTheme: ECCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: ECBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: ECElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ECOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ECTextFormFieldTheme.darkInputDecorationTheme,
  );
}

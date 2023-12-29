import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ECChipTheme {
  ECChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: ColorPalette.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: ColorPalette.black),
    selectedColor: ColorPalette.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ColorPalette.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: ColorPalette.darkerGrey,
    labelStyle: TextStyle(color: ColorPalette.white),
    selectedColor: ColorPalette.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ColorPalette.white,
  );
}

import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ECChipTheme {
  ECChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Palette.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Palette.black),
    selectedColor: Palette.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Palette.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Palette.darkerGrey,
    labelStyle: TextStyle(color: Palette.white),
    selectedColor: Palette.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Palette.white,
  );
}

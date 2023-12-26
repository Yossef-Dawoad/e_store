import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ECChipTheme {
  ECChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: ECColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: ECColors.black),
    selectedColor: ECColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ECColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: ECColors.darkerGrey,
    labelStyle: TextStyle(color: ECColors.white),
    selectedColor: ECColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ECColors.white,
  );
}

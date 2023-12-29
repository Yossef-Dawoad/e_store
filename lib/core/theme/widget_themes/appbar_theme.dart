import 'package:flutter/material.dart';
import 'package:e_store/core/constants/sizes.dart';
import '../../constants/colors.dart';

class ECAppBarTheme {
  ECAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ColorPalette.black, size: ECSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: ColorPalette.black, size: ECSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: ColorPalette.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ColorPalette.black, size: ECSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: ColorPalette.white, size: ECSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: ColorPalette.white),
  );
}

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
    iconTheme: IconThemeData(color: Palette.black, size: AppSizes.iconMd),
    actionsIconTheme: IconThemeData(color: Palette.black, size: AppSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Palette.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Palette.black, size: AppSizes.iconMd),
    actionsIconTheme: IconThemeData(color: Palette.white, size: AppSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Palette.white),
  );
}

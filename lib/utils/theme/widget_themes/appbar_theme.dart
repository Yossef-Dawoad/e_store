import 'package:flutter/material.dart';
import 'package:e_store/utils/constants/sizes.dart';
import '../../constants/colors.dart';

class ECAppBarTheme {
  ECAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ECColors.black, size: ECSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: ECColors.black, size: ECSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: ECColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ECColors.black, size: ECSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: ECColors.white, size: ECSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: ECColors.white),
  );
}

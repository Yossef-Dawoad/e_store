import 'package:e_store/core/constants/colors.dart';
import 'package:flutter/material.dart';

class ShadowStyles {
  static final verticalProductCardShadow = BoxShadow(
    color: ColorPalette.black.withOpacity(0.1),
    offset: const Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );

  static final horizontalProductCardShadow = BoxShadow(
    color: ColorPalette.black.withOpacity(0.1),
    offset: const Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );
}

import 'package:flutter/material.dart';
import 'package:e_store/core/constants/colors.dart';
import '../../constants/sizes.dart';

class ECTextFormFieldTheme {
  ECTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ColorPalette.darkGrey,
    suffixIconColor: ColorPalette.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: ECSizes.fontSizeMd, color: ColorPalette.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: ECSizes.fontSizeSm, color: ColorPalette.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ColorPalette.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorPalette.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorPalette.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorPalette.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorPalette.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ColorPalette.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ColorPalette.darkGrey,
    suffixIconColor: ColorPalette.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
      fontSize: ECSizes.fontSizeMd,
      color: ColorPalette.grey,
    ),
    hintStyle: const TextStyle()
        .copyWith(fontSize: ECSizes.fontSizeSm, color: ColorPalette.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ColorPalette.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorPalette.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorPalette.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorPalette.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorPalette.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ColorPalette.warning),
    ),
  );
}

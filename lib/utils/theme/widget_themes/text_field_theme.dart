import 'package:flutter/material.dart';
import 'package:e_store/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class ECTextFormFieldTheme {
  ECTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ECColors.darkGrey,
    suffixIconColor: ECColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: ECSizes.fontSizeMd, color: ECColors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: ECSizes.fontSizeSm, color: ECColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ECColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ECColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ECColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ECColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ECColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ECColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ECColors.darkGrey,
    suffixIconColor: ECColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: ECSizes.fontSizeMd, color: ECColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: ECSizes.fontSizeSm, color: ECColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ECColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ECColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ECColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ECColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ECColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ECSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ECColors.warning),
    ),
  );
}

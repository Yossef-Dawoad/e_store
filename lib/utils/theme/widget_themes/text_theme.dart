import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Text Themes
class ECTextTheme {
  ECTextTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    /// HeadLines L, M, S
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: ColorPalette.dark,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.dark,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.dark,
    ),

    /// Titles L, M, S
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.dark,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.dark,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: ColorPalette.dark,
    ),

    /// Body L, M, S
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.dark,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: ColorPalette.dark,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.dark.withOpacity(0.5),
    ),

    /// Label L, M, S
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: ColorPalette.dark,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: ColorPalette.dark.withOpacity(0.5),
    ),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    /// HeadLines L, M, S
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: ColorPalette.light,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.light,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.light,
    ),

    /// Titles L, M, S
    titleLarge: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: ColorPalette.light,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.light,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: ColorPalette.light,
    ),

    /// Body L, M, S
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.light,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: ColorPalette.light,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: ColorPalette.light.withOpacity(0.5),
    ),

    /// Labels L, M, S
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: ColorPalette.light,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: ColorPalette.light.withOpacity(0.5),
    ),
  );
}

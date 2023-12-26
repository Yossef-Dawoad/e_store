import 'package:flutter/material.dart';

extension ContextThemingExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  Color get primaryColor => theme.primaryColor;
  Color get primaryColorDark => theme.primaryColorDark;
  Color get primaryColorLight => theme.primaryColorLight;
  Color get backgroundColor => theme.colorScheme.background;
  Color get scaffoldBackgroundColor => theme.scaffoldBackgroundColor;
  Color get cardColor => theme.cardColor;
  Color get dividerColor => theme.dividerColor;
  Color get disabledColor => theme.disabledColor;
  Color? get buttonColor => theme.buttonTheme.colorScheme?.primary;
  Color get secondaryHeaderColor => theme.secondaryHeaderColor;
  IconThemeData get primaryIconThemeColor => theme.primaryIconTheme;
  Color get canvasColor => theme.canvasColor;
  Color get shadowColor => theme.shadowColor;
}

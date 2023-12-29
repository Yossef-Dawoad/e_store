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

extension NavigatingExtensions on BuildContext {
  Future<T?> pushRoute<T>(Widget page) {
    return Navigator.of(this)
        .push(MaterialPageRoute(builder: (context) => page));
  }

  Future<T?> pushNamedRoute<T>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<T?> pushNamedRouteAndRemoveUntil<T>(
    String routeName,
    Widget page, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName(routeName),
      arguments: arguments,
    );
  }

  void pushReplacementRoute(Widget page) {
    Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  Future<T?> pushReplacementNamedRoute<T>(String routeName,
      {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  void popRoute<T>([T? result]) {
    Navigator.of(this).pop(result);
  }
}

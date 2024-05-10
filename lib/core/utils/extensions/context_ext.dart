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
    String routeName, {
    String? routeNameToRemove,
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName(routeNameToRemove ?? routeName),
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

  bool get isDarkMode => theme.brightness == Brightness.dark;
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  // show snackbar
  void showSnackBar(String message, Color backgroundColor) {
    ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: backgroundColor,
        ),
      );
  }
}

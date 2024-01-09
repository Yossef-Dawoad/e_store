import 'package:e_store/core/utils/local_storage/storage_utility.dart';

class Routes {
  static const onBoarding = '/on-boarding';
  static const signUp = '/sign-up';
  static const signIn = '/sign-in';
  static const verifyEmail = '/verify-email';
  static const verifySuccess = '/verify-success';
  static const forgetPassword = '/forget-password';
  static const navigationMenu = '/navigation-menu';

  /// Gets the initial route to display when the app starts based on
  /// previously saved state. Checks local storage for an initial route flag,
  /// saves the next state, and returns the appropriate route name.
  static String get initialRoute {
    final storage = LocalStorageManager.instance;
    final initialRoute = storage.readData('initial_route');

    if (initialRoute == null || initialRoute == 0) {
      return Routes.onBoarding;
    }
    if (initialRoute == 1) return Routes.signIn;

    return Routes.navigationMenu;
  }
}
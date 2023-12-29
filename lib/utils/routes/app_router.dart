import 'package:e_store/features/authentication/screens/login/login_screen.dart';
import 'package:e_store/features/authentication/screens/signup/signup_screen.dart';
import 'package:e_store/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
      Routes.signIn => MaterialPageRoute(builder: (_) => const LoginScreen()),
      Routes.signUp => MaterialPageRoute(builder: (_) => const SignUpScreen()),
      Routes.verifyEmail =>
        MaterialPageRoute(builder: (_) => const VerifyEmailScreen()),
      _ => _errorRoute(settings.name),
    };
  }

  static Route<dynamic> _errorRoute(String? pageName) {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('404 not Found', style: TextStyle(fontSize: 32.0)),
        ),
      ),
    );
  }
}

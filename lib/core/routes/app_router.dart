import 'package:e_store/core/bindings/dependency_inject.dart';
import 'package:e_store/features/authentication/view/blocs/login_cubit/login_cubit.dart';
import 'package:e_store/features/authentication/view/blocs/signup_cubit/signup_cubit.dart';
import 'package:e_store/features/authentication/view/blocs/verify_email_cubit/verify_email_cubit_cubit.dart';
import 'package:e_store/features/authentication/view/screens/login/forget_screen.dart';
import 'package:e_store/features/authentication/view/screens/login/login_screen.dart';
import 'package:e_store/features/authentication/view/screens/signup/signup_screen.dart';
import 'package:e_store/features/authentication/view/screens/signup/verify_email.dart';
import 'package:e_store/features/onboarding/onboarding.dart';
import 'package:e_store/features/shop/screens/home/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routes.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
      Routes.onBoarding =>
        MaterialPageRoute(builder: (_) => const OnBoardingScreen()),
      Routes.signIn => MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<LoginCubit>(),
            child: const LoginScreen(),
          ),
        ),
      Routes.signUp => MaterialPageRoute(
          builder: (_) => BlocProvider(
                create: (context) => sl<SignUpCubit>(),
                child: const SignUpScreen(),
              )),
      Routes.verifyEmail => MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<VerifyEmailCubitCubit>(),
            child: const VerifyEmailScreen(),
          ),
        ),
      Routes.forgetPassword =>
        MaterialPageRoute(builder: (_) => const ForgetPasswordScreen()),
      Routes.navigationMenu =>
        MaterialPageRoute(builder: (_) => const NavigationMenu()),
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
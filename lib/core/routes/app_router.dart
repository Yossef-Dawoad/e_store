import 'package:e_store/core/di/dependency_inject.dart';
import 'package:e_store/core/shared/widgets/error/error_screens.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/authentication/view/blocs/login_cubit/login_cubit.dart';
import 'package:e_store/features/authentication/view/blocs/signup_cubit/signup_cubit.dart';
import 'package:e_store/features/authentication/view/blocs/verify_email_cubit/verify_email_cubit_cubit.dart';
import 'package:e_store/features/authentication/view/screens/login/forget_screen.dart';
import 'package:e_store/features/authentication/view/screens/login/login_screen.dart';
import 'package:e_store/features/authentication/view/screens/login/reset_password_screen.dart';
import 'package:e_store/features/authentication/view/screens/signup/signup_screen.dart';
import 'package:e_store/features/authentication/view/screens/signup/verify_email.dart';
import 'package:e_store/core/shared/logic/blocs/redirect_first_route/redirect_route_bloc.dart';
import 'package:e_store/features/first_route_page.dart';
import 'package:e_store/features/onboarding/onboarding_main.dart';
import 'package:e_store/features/personalization/view/profile/profile.dart';
import 'package:e_store/features/shop/screens/navigation_menu.dart';
import 'package:e_store/features/shop/screens/product_details/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routes.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    return switch (settings.name) {
      Routes.initialRoute => MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => sl<RedirectFirstRouteBloc>()
                ..add(const RedirectRouteEvent.routeEntered()),
              child: const ManageFirstRoute()),
        ),
      Routes.onBoarding =>
        MaterialPageRoute(builder: (_) => const OnBoardingScreen()),
      Routes.signIn => MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => sl<LoginCubit>(),
              child: const LoginScreen()),
        ),
      Routes.signUp => MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => sl<SignUpCubit>(),
              child: const SignUpScreen()),
        ),
      Routes.verifyEmail => MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => sl<VerifyEmailCubit>(),
              child: const VerifyEmailScreen()),
        ),
      Routes.forgetPassword => MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => sl<LoginCubit>(),
              child: const ForgetPasswordScreen()),
        ),
      Routes.resetPasswordSuccess => MaterialPageRoute(
          builder: (context) => const ResetPasswordScreen(),
        ),
      Routes.profile =>
        MaterialPageRoute(builder: (_) => const ProfileScreen()),
      Routes.productDetail =>
        MaterialPageRoute(builder: (_) => const ProductDetailsScreen()),
      Routes.navigationMenu =>
        MaterialPageRoute(builder: (_) => const NavigationMenu()),
      _ => _errorRoute(settings.name),
    };
  }

  static Route<dynamic> _errorRoute(String? pageName) {
    return MaterialPageRoute(
      builder: (ctx) => Scaffold(
        body: Center(
          child: CommonErrorPage(
            description: '404 Not Found \nThis Page Should Not Exist..!!!',
            icon: Icons.code_off,
            onRetryText: 'Go Back',
            onRetry: () => ctx.popRoute(),
          ),
        ),
      ),
    );
  }
}

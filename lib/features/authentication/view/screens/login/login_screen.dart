import 'package:e_store/core/shared/widgets/dialogs/loading_dialogs.dart';
import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/features/authentication/view/blocs/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';

import 'package:e_store/core/shared/styles/spacing_styles.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/authentication/view/screens/login/widgets/login_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.padwAppBar,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title & SubTitle
              Text(
                AppTexts.loginTitle,
                style: context.textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.fontSizeSm),
              Text(
                AppTexts.loginSubTitle,
                style: context.textTheme.bodyMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              // Form Section
              const LoginForm(),
              BlocListener<LoginCubit, LoginState>(
                listener: (context, state) => switch (state) {
                  LogInLoading() ||
                  SendResetEmailLoading() =>
                    animatedDialogScreenLoader(
                      context,
                      'Processing Your request...',
                      AppImages.docerLoaderAnimation,
                    ),
                  LogInSuccess() =>
                    context.pushNamedRouteAndRemoveUntil(Routes.navigationMenu),
                  SendResetEmailSuccess() => {
                      print('should be routed to reset password screen'),
                      context.pushNamedRoute(Routes.resetPasswordSuccess),
                    },
                  _ => {
                      closeLoaderDialogScreen(context),
                      context.showSnackBar(
                          'Somthing went Worng', ColorPalette.error)
                    },
                },
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

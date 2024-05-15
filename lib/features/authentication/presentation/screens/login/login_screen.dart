import 'package:e_store/core/di/dependency_inject.dart';
import 'package:e_store/core/shared/logic/services/storage_utility.dart';
import 'package:e_store/core/shared/widgets/dialogs/loading_dialogs.dart';
import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/logging/logger.dart';
import 'package:e_store/features/authentication/presentation/blocs/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';

import 'package:e_store/core/shared/styles/spacing_styles.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/authentication/presentation/screens/login/widgets/login_form.dart';
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
                  LogInLoading() || SendResetEmailLoading() => animatedDialogScreenLoader(
                      context,
                      'Processing Your request...',
                      AppImages.docerLoaderAnimation,
                    ),
                  LogInSuccess() => saveSuccesfullLoginAndRoute(context),
                  SendResetEmailSuccess() => routeToSuccessScreen(context),
                  _ => {
                      closeLoaderDialogScreen(context),
                      context.showSnackBar('Somthing went Worng', Palette.error)
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

  void saveSuccesfullLoginAndRoute(BuildContext context) async {
    final logger = sl<LoggerHelper>();
    logger.debug('[LocalStorage] Saving initial route with value 2 to local storage');

    final storage = sl<LocalStorageManager>();
    await storage
        .saveData('initial_route', 2)
        .then((value) => context.pushNamedRouteAndRemoveUntil(Routes.navigationMenu));

    logger.debug(
      '[LocalStorage] Successful Save for initial route with value ${storage.readData('initial_route')}',
    );
  }

  void routeToSuccessScreen(BuildContext context) {
    final logger = sl<LoggerHelper>();
    logger.debug('[ROUTING] heading to reset passwordSuccessScreen');
    context.pushNamedRoute(Routes.resetPasswordSuccess);
  }
}

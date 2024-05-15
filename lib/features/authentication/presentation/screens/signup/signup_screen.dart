import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/shared/widgets/dialogs/loading_dialogs.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/authentication/presentation/blocs/signup_cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/signupform.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Title Create account
              Text(
                AppTexts.signupTitle,
                style: context.textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Form
              const SignUpForm(),

              BlocListener<SignUpCubit, SignupState>(
                listenWhen: (prev, curr) =>
                    curr is SignUpLoading || curr is SignUpSuccess || curr is SignUpFailure,
                listener: (context, state) => state.maybeWhen(
                  loading: () => animatedDialogScreenLoader(
                      context, 'Processing Your request...', AppImages.docerLoaderAnimation),
                  success: (cred) =>
                      context.pushNamedRoute(Routes.verifyEmail, arguments: cred.email),
                  failure: (message) => _closeLoaderDialogAndShowSnack(context, message),
                  orElse: () => _closeLoaderDialogAndShowSnack(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _closeLoaderDialogAndShowSnack(
    BuildContext context, [
    String message = 'Somthing went Worng',
  ]) {
    closeLoaderDialogScreen(context);
    context.showSnackBar(message, Palette.error);
  }
}

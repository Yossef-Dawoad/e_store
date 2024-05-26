import 'package:e_store/core/di/dependency_inject.dart';
import 'package:e_store/core/shared/widgets/dialogs/dialog_base.dart';
import 'package:e_store/core/shared/widgets/success_screen.dart';
import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/shared/logic/services/storage_utility.dart';
import 'package:e_store/features/authentication/data/models/user_account.dart';
import 'package:e_store/features/authentication/presentation/blocs/verify_email_cubit/verify_email_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyEmailCubitListener extends StatelessWidget {
  const VerifyEmailCubitListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyEmailCubit, VerifyEmailCubitState>(
      listenWhen: (prev, curr) =>
          curr is VerifyEmailLoading ||
          curr is VerifyEmailSent ||
          curr is UserVerifiedsuccess ||
          curr is VerifyEmailFailure,
      listener: (context, state) => state.maybeWhen(
        loading: () => showDialog(
          context: context,
          builder: (context) => const Center(
            child: CircularProgressIndicator(color: Palette.primary),
          ),
        ),
        emailSent: () => context
          ..popRoute()
          ..showSnackBar('Email Sent Successfully to You Inbox', Palette.success),
        userVerifiedsuccess: (userData) => userScreenRedirect(context, userData),
        userNotVerified: () => context
          ..popRoute()
          ..createDialogPopUp('User Not Verified', DialogType.alert),
        failure: (err, st) => context
          ..popRoute()
          ..createDialogPopUp(err.toString(), DialogType.alert),
        orElse: () => context
          ..popRoute()
          ..createDialogPopUp('Somthing went Wrong, please try again later', DialogType.alert),
      ),
      child: const SizedBox.shrink(),
    );
  }

  void userScreenRedirect(BuildContext context, UserAccount? userData) async {
    final storage = sl<LocalStorageManager>();
    print(userData);
    if (userData?.isEmailVerified ?? false) {
      print('saving user to db ');
      await storage.saveData('initial_route', 2).then(
            (value) => context.pushRoute(
              SuccessScreen(
                image: AppImages.docerLoaderAnimation,
                title: AppTexts.yourAccountCreatedTitle,
                subTitle: AppTexts.yourAccountCreatedSubTitle,
                onPressed: () => context.pushReplacementNamedRoute(Routes.navigationMenu),
              ),
            ),
          );
    }
  }
}

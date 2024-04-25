import 'package:e_store/core/shared/widgets/dialogs/dialog_base.dart';
import 'package:e_store/core/shared/widgets/success_screen.dart';
import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/shared/logic/services/storage_utility.dart';
import 'package:e_store/features/authentication/view/blocs/verify_email_cubit/verify_email_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyEmailCubitListener extends StatelessWidget {
  const VerifyEmailCubitListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyEmailCubit, VerifyEmailCubitState>(
      listenWhen: (prev, curr) =>
          curr is VerifyEmailLoading ||
          curr is VerifyEmailSuccess ||
          curr is VerifyEmailFailure,
      listener: (context, state) => state.whenOrNull(
        loading: () => showDialog(
          context: context,
          builder: (context) => const Center(
            child: CircularProgressIndicator(color: ColorPalette.primary),
          ),
        ),
        success: (isSignedIn) => userScreenRedirect(context, isSignedIn),
        failure: (err, st) {
          context.popRoute();
          customDialogPopUp(
            context,
            err.toString(),
            DialogType.alert,
          );
          return null;
        },
      ),
      child: const SizedBox.shrink(),
    );
  }

  void userScreenRedirect(BuildContext context, bool isSignedIn) async {
    final storage = LocalStorageManager.instance;
    if (isSignedIn) {
      await storage.saveData('initial_route', 2).then(
            (value) => context.pushRoute(
              SuccessScreen(
                image: AppImages.staticSuccessIllustration,
                title: AppTexts.yourAccountCreatedTitle,
                subTitle: AppTexts.yourAccountCreatedSubTitle,
                onPressed: () =>
                    context.pushReplacementNamedRoute(Routes.navigationMenu),
              ),
            ),
          );
    }
  }
}

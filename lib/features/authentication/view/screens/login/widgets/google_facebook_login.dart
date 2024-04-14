import 'package:e_store/core/bindings/dependency_inject.dart';
import 'package:e_store/core/common/widgets/dialogs/loading_dialogs.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/authentication/view/blocs/google_auth_cubit/google_auth_cubit.dart';
import 'package:flutter/material.dart';

import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoogleFaceBookButton extends StatelessWidget {
  const GoogleFaceBookButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GoogleAuthCubit>(
      create: (context) => sl(),
      child: Builder(
        builder: (context) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorPalette.grey),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {
                    context.read<GoogleAuthCubit>().logInWithGoogle();
                    // context.pushReplacementNamedRoute(Routes.navigationMenu);
                  },
                  icon: const Image(
                    width: AppSizes.iconMd,
                    height: AppSizes.iconMd,
                    image: AssetImage(AppImages.google),
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorPalette.grey),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Image(
                    width: AppSizes.iconMd,
                    height: AppSizes.iconMd,
                    image: AssetImage(AppImages.facebook),
                  ),
                ),
              ),
              BlocListener<GoogleAuthCubit, GoogleAuthState>(
                listener: (context, state) => switch (state) {
                  GoogleAuthSuccess() =>
                    context.pushNamedRouteAndRemoveUntil(Routes.navigationMenu),
                  GoogleAuthFailure() => context.showSnackBar(
                      state.message,
                      ColorPalette.error,
                    ),
                  //TDOO an animated loading screen
                  GoogleAuthLoading() => animatedDialogScreenLoader(
                      context,
                      'Processing Your request...',
                      AppImages.docerLoaderAnimation,
                    ),
                  _ => context.showSnackBar(
                      'Something went Worng', ColorPalette.error),
                },
                child: const SizedBox.shrink(),
              )
            ],
          );
        },
      ),
    );
  }
}

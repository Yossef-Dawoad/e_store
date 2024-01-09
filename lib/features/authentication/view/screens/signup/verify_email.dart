import 'package:e_store/core/common/widgets/success_screen.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/utils/helpers/helper_functions.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => context.popRoute(),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(
                image: const AssetImage(ECImages.deliveredEmailIllustration),
                width: HelperFunctions.screenWidth(context) * 0.6,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              ///Title & Description
              Text(
                AppTexts.confirmEmail,
                style: context.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                'support@dawoud.com',
                style: context.textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              Text(
                AppTexts.confirmEmailSubTitle,
                style: context.textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              ///Action Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => context.pushRoute(
                    const SuccessScreen(
                        image: ECImages.staticSuccessIllustration,
                        title: AppTexts.yourAccountCreatedTitle,
                        subTitle: AppTexts.yourAccountCreatedSubTitle,
                        routeTo: Routes.signIn),
                  ),
                  child: const Text(AppTexts.tContinue),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              /// Resend Email textButton
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(AppTexts.resendEmail),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

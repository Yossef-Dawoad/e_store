import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/extensions/context_ext.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
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
          padding: const EdgeInsets.all(ECSizes.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(
                image: const AssetImage(ECImages.deliveredEmailIllustration),
                width: ECHelperFunctions.screenWidth(context) * 0.6,
              ),
              const SizedBox(height: ECSizes.spaceBtwSections),

              ///Title & Description
              Text(
                ECTexts.confirmEmail,
                style: context.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ECSizes.spaceBtwItems),
              Text(
                'support@dawoud.com',
                style: context.textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ECSizes.spaceBtwSections),
              Text(
                ECTexts.confirmEmailSubTitle,
                style: context.textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ECSizes.spaceBtwSections),

              ///Action Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(ECTexts.tContinue),
                ),
              ),
              const SizedBox(height: ECSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(ECTexts.resendEmail),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

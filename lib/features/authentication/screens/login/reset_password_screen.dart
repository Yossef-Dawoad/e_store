import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => context.popRoute(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ECSizes.defaultSpace),
          child: Column(
            children: [
              ///image with 60% of screen width

              ///image
              Image(
                image: const AssetImage(ECImages.deliveredEmailIllustration),
                width: ECHelperFunctions.screenWidth(context) * 0.6,
              ),
              const SizedBox(height: ECSizes.spaceBtwSections),

              ///Title & Description
              Text(
                ECTexts.changeYourPasswordTitle,
                style: context.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ECSizes.spaceBtwItems),
              Text(
                ECTexts.changeYourPasswordSubTitle,
                style: context.textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ECSizes.spaceBtwSections),

              ///Action Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(ECTexts.done),
                ),
              ),
              const SizedBox(height: ECSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
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

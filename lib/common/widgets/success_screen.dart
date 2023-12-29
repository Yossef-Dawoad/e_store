import 'package:e_store/common/styles/spacing_styles.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/extensions/context_ext.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:e_store/utils/routes/routes.dart';
import 'package:flutter/material.dart';

class VerifySuccessScreen extends StatelessWidget {
  const VerifySuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: SpacingStyles.padwAppBar,
        child: Column(
          children: [
            ///image
            Image(
              image: const AssetImage(ECImages.staticSuccessIllustration),
              width: ECHelperFunctions.screenWidth(context) * 0.6,
            ),
            const SizedBox(height: ECSizes.spaceBtwSections),

            ///Title & Description
            Text(
              ECTexts.yourAccountCreatedTitle,
              style: context.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: ECSizes.spaceBtwItems),
            Text(
              ECTexts.yourAccountCreatedSubTitle,
              style: context.textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: ECSizes.spaceBtwSections),

            ///Action Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.pushNamedRoute(Routes.signIn),
                child: const Text(ECTexts.tContinue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

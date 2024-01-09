import 'package:e_store/core/common/styles/spacing_styles.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.routeTo,
  });

  final String image;
  final String title;
  final String subTitle;
  final String routeTo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: SpacingStyles.padwAppBar,
        child: Column(
          children: [
            ///image
            Lottie.asset(
              image,
              width: HelperFunctions.screenWidth(context) * 0.6,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            ///Title & Description
            Text(
              title,
              style: context.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              subTitle,
              style: context.textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            ///Action Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.pushNamedRoute(routeTo),
                child: const Text(AppTexts.tContinue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

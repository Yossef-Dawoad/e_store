import 'package:e_store/core/common/styles/spacing_styles.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

import 'widgets/google_facebook_login.dart';
import 'widgets/or_signin_div.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = ECHelperFunctions.isDarkMode(context);
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
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Divider
              TextBtwDivider(
                text: AppTexts.orSignInWith,
                isDarkMode: isDarkMode,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              // Footer
              const GoogleFaceBookButton(),
            ],
          ),
        ),
      ),
    );
  }
}

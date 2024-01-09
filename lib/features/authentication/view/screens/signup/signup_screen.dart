import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../login/widgets/google_facebook_login.dart';
import '../login/widgets/or_signin_div.dart';
import 'widgets/signupform.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
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
              SignUpForm(isDark: isDark),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Divider
              TextBtwDivider(
                text: AppTexts.orSignUpWith,
                isDarkMode: isDark,
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

import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/extensions/context_ext.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../login/widgets/google_facebook_login.dart';
import '../login/widgets/or_signin_div.dart';
import 'widgets/signupform.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = ECHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ECSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Title Create account
              Text(
                ECTexts.signupTitle,
                style: context.textTheme.headlineMedium,
              ),
              const SizedBox(height: ECSizes.spaceBtwSections),

              // Form
              SignUpForm(isDark: isDark),
              const SizedBox(height: ECSizes.spaceBtwSections),

              // Divider
              TextBtwDivider(
                text: ECTexts.orSignUpWith,
                isDarkMode: isDark,
              ),
              const SizedBox(height: ECSizes.spaceBtwSections),

              // Footer
              const GoogleFaceBookButton(),
            ],
          ),
        ),
      ),
    );
  }
}

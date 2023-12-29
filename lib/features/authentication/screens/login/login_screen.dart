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
                ECTexts.loginTitle,
                style: context.textTheme.headlineMedium,
              ),
              const SizedBox(height: ECSizes.fontSizeSm),
              Text(
                ECTexts.loginSubTitle,
                style: context.textTheme.bodyMedium,
              ),

              // Form Section
              const LoginForm(),

              // Divider
              TextBtwDivider(
                text: ECTexts.orSignInWith,
                isDarkMode: isDarkMode,
              ),

              // Footer
              const GoogleFaceBookButton(),
            ],
          ),
        ),
      ),
    );
  }
}

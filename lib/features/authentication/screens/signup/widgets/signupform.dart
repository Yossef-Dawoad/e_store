import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'terms_and_condtions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          //user name first & last name
          Row(
            children: <Widget>[
              // first name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.user),
                    labelText: AppTexts.firstName,
                    labelStyle: context.textTheme.labelLarge,
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              // last name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.user),
                    labelText: AppTexts.lastName,
                    labelStyle: context.textTheme.labelLarge,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.direct),
              labelText: AppTexts.email,
              labelStyle: context.textTheme.labelLarge,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // // password
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: AppTexts.password,
              labelStyle: context.textTheme.labelLarge,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // //Terms & Conditions
          Row(
            children: [
              SizedBox(
                width: 25,
                height: 25,
                child: Checkbox(value: true, onChanged: (val) {}),
              ),
              const SizedBox(width: AppSizes.defaultSpace),
              const TermsAndConditionCheckBox(),
            ],
          ),

          const SizedBox(height: AppSizes.spaceBtwSections),
          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => context.pushNamedRoute(Routes.verifyEmail),
              child: const Text(AppTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}

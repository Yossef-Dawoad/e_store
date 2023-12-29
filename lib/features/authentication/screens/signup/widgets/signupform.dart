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
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: AppTexts.firstName,
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: AppTexts.lastName,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // email
          Expanded(
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct),
                labelText: AppTexts.email,
              ),
            ),
          ),
          // password
          Expanded(
            child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: AppTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          //Terms & Conditions
          Row(
            children: <Widget>[
              SizedBox(
                width: 24,
                height: 24,
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

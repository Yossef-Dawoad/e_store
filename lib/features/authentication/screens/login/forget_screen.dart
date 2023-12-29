import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///headings
            Text(
              AppTexts.forgetPasswordTitle,
              style: context.textTheme.headlineMedium,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              AppTexts.forgetPasswordSubTitle,
              style: context.textTheme.labelMedium,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections * 2.0),

            // ///email
            TextFormField(
              decoration: const InputDecoration(
                labelText: AppTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            const SizedBox(height: AppSizes.defaultSpace),
            // ///submit button
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(15.0),
                      ),
                    ),
                child: const Text(AppTexts.submit),
              ),
            )
          ],
        ),
      ),
    );
  }
}

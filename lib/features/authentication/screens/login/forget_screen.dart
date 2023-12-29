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
        padding: const EdgeInsets.all(ECSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///headings
            Text(
              ECTexts.forgetPasswordTitle,
              style: context.textTheme.headlineMedium,
            ),
            const SizedBox(height: ECSizes.spaceBtwItems),
            Text(
              ECTexts.forgetPasswordSubTitle,
              style: context.textTheme.labelMedium,
            ),
            const SizedBox(height: ECSizes.spaceBtwSections * 2.0),

            // ///email
            TextFormField(
              decoration: const InputDecoration(
                labelText: ECTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            // ///submit button
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(ECTexts.submit),
              ),
            )
          ],
        ),
      ),
    );
  }
}

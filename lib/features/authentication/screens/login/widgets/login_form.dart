import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: ECTexts.email,
              ),
            ),
            const SizedBox(height: ECSizes.spaceBtwInputFields),
            // Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: ECTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
                suffixIconConstraints: BoxConstraints(minWidth: 0),
              ),
            ),
            const SizedBox(height: ECSizes.spaceBtwInputFields / 2.0),

            // Remember Me Checkbox & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: ((value) {})),
                    TextButton(
                      onPressed: () {},
                      child: const Text(ECTexts.rememberMe),
                    ),
                  ],
                ),
                // Forget Password
                TextButton(
                  onPressed: () =>
                      context.pushNamedRoute(Routes.forgetPassword),
                  child: const Text(ECTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: ECSizes.spaceBtwSections),

            // Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(ECTexts.signIn),
              ),
            ),

            const SizedBox(height: ECSizes.spaceBtwSections),

            // Register Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.pushNamedRoute(Routes.signUp),
                child: const Text(ECTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

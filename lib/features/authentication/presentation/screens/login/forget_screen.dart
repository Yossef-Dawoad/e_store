import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
// import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/authentication/presentation/blocs/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final emailController = TextEditingController();

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
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: AppTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            const SizedBox(height: AppSizes.defaultSpace),
            // ///submit button
            SizedBox(
              child: ElevatedButton(
                onPressed: () => _sendResetPasswordEmail(
                  context,
                  emailController.text.trim(),
                ),
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      padding: WidgetStateProperty.all(
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

  void _sendResetPasswordEmail(BuildContext context, String email) {
    context.read<LoginCubit>().sendResetEmail(email: email);
    // context.pushNamedRoute(Routes.resetPasswordSuccess);
  }
}

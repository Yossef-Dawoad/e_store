import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/di/dependency_inject.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/shared/logic/services/helper_functions.dart';
import 'package:e_store/core/shared/logic/services/storage_utility.dart';
import 'package:e_store/core/utils/validators/validation.dart';
import 'package:e_store/features/authentication/view/blocs/login_cubit/login_cubit.dart';
import 'package:e_store/features/authentication/view/screens/signup/widgets/password_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import 'google_facebook_login.dart';
import 'or_signin_div.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var rememberMe = false;
  // final

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context);
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Email
            TextFormField(
              controller: _emailController,
              validator: (val) => FieldValidator.validateEmail(val),
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: AppTexts.email,
                labelStyle: context.textTheme.labelLarge,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            // Password
            PassWordInputField(
              controller: _passwordController,
              validator: (val) => FieldValidator.validatePassword(val),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields / 2.0),

            // Remember Me Checkbox & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: rememberMe, onChanged: (_) => rememberMe = !rememberMe),
                    TextButton(
                      onPressed: () {},
                      child: const Text(AppTexts.rememberMe),
                    ),
                  ],
                ),
                // Forget Password
                TextButton(
                  onPressed: () => context.pushNamedRoute(Routes.forgetPassword),
                  child: const Text(AppTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _validateThenPerfromSignIn(context),
                child: const Text(AppTexts.signIn),
              ),
            ),

            const SizedBox(height: AppSizes.spaceBtwSections),

            // Register Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.pushNamedRoute(Routes.signUp),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
                child: Text(
                  AppTexts.createAccount,
                  style: TextStyle(color: isDarkMode ? Colors.white : Colors.black87),
                ),
              ),
            ),
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
    );
  }

  // ignore: unused_element
  Future<void> _validateThenPerfromSignIn(BuildContext context) async {
    final email = _emailController.text.trim();
    final signInCubit = context.read<LoginCubit>();

    if (_formKey.currentState!.validate()) {
      signInCubit.logIn(
        email: email,
        password: _passwordController.text.trim(),
      );
      // save user credintials to local storage
      if (!rememberMe) context.pushReplacementNamedRoute(Routes.navigationMenu);
      final storage = sl<LocalStorageManager>();

      await storage.saveData('initial_route', 2).then(
            (value) => Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => route.isFirst),
          );
    }
    // should display snackbar if validation fails??
  }
}

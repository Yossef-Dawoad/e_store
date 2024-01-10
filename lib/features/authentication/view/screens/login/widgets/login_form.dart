import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/validators/validation.dart';
import 'package:e_store/features/authentication/view/blocs/login_cubit/login_cubit.dart';
import 'package:e_store/features/authentication/view/screens/signup/widgets/password_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: AppTexts.email,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            // Password
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: AppTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
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
                    Checkbox(value: true, onChanged: ((value) {})),
                    TextButton(
                      onPressed: () {},
                      child: const Text(AppTexts.rememberMe),
                    ),
                  ],
                ),
                // Forget Password
                TextButton(
                  onPressed: () =>
                      context.pushNamedRoute(Routes.forgetPassword),
                  child: const Text(AppTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),

            // Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>
                    context.pushReplacementNamedRoute(Routes.navigationMenu),
                child: const Text(AppTexts.signIn),
              ),
            ),

            const SizedBox(height: AppSizes.spaceBtwSections),

            // Register Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.pushNamedRoute(Routes.signUp),
                child: const Text(AppTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
  void _validateThenPerfromSignIn(BuildContext context) {
    final signInCubit = context.read<LoginCubit>();

    // using a golbal key to access the agreement checkbox
    // else snackbar should be placed
    final email = _emailController.text.trim();
    if (_formKey.currentState!.validate()) {
      signInCubit.logIn(
        email: email,
        password: _passwordController.text.trim(),
      );
      // BUG arguments doesn't passed correctly
      context.pushNamedRoute(Routes.navigationMenu);
    }
  }
}

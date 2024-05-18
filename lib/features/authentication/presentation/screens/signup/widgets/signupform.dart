import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/shared/logic/services/helper_functions.dart';
import 'package:e_store/core/utils/validators/validation.dart';
import 'package:e_store/features/authentication/presentation/blocs/signup_cubit/signup_cubit.dart';

import 'package:e_store/features/authentication/presentation/screens/login/widgets/google_facebook_login.dart';
import 'package:e_store/features/authentication/presentation/screens/login/widgets/or_signin_div.dart';
import 'password_input_field.dart';
import 'terms_and_condtions.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  final ValueNotifier<bool> _privacyPolicyAccepted = ValueNotifier<bool>(false);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          //user name first & last name
          Row(
            children: <Widget>[
              // first name
              Expanded(
                child: TextFormField(
                  expands: false,
                  controller: _firstNameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.user),
                    labelText: AppTexts.firstName,
                    labelStyle: context.textTheme.labelLarge,
                  ),
                  validator: (val) => Validators.notEmptyField(val),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              // last name
              Expanded(
                child: TextFormField(
                  expands: false,
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.user),
                    labelText: AppTexts.lastName,
                    labelStyle: context.textTheme.labelLarge,
                  ),
                  validator: (val) => Validators.notEmptyField(val),
                ),
              )
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // email
          TextFormField(
            expands: false,
            controller: _emailController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.direct),
              labelText: AppTexts.email,
              labelStyle: context.textTheme.labelLarge,
            ),
            validator: (val) => Validators.validEmail(val),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // // password
          PassWordInputField(
            controller: _passwordController,
            validator: (val) => Validators.validPassword(val),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // confirm password
          PassWordInputField(
            controller: _rePasswordController,
            validator: (pwValue) => Validators.validateConfirmPassword(
              pwValue,
              _passwordController.text,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // //Terms & Conditions
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TermsAgreementCheckBox(privacyAcceptedNotifier: _privacyPolicyAccepted),
              const SizedBox(width: AppSizes.defaultSpace),
              const Expanded(child: TermsAndConditionCheckBox()),
            ],
          ),

          const SizedBox(height: AppSizes.spaceBtwSections),
          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => _validateThenPerfromSignUp(context),
              child: const Text(AppTexts.createAccount),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // Sign In Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => context.pushNamedRoute(Routes.signIn),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
              child: const Text(AppTexts.signIn),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // Divider
          TextBtwDivider(
            text: AppTexts.orSignUpWith,
            isDarkMode: isDark,
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),

          // Footer
          const GoogleFaceBookButton(),
        ],
      ),
    );
  }

  void _validateThenPerfromSignUp(BuildContext context) {
    // using a golbal key to access the agreement checkbox
    // else snackbar should be placed
    final email = _emailController.text.trim();
    if (_formKey.currentState!.validate()) {
      if (!_privacyPolicyAccepted.value) {
        context.showSnackBar('Please Accept Privacy Policy In Order to Continue');
        return;
      }
      final signUpCubit = context.read<SignUpCubit>();
      signUpCubit.signUp(
        email: email,
        password: _passwordController.text.trim(),
      );
    }
  }
}

class TermsAgreementCheckBox extends StatelessWidget {
  const TermsAgreementCheckBox({super.key, required this.privacyAcceptedNotifier});
  final ValueNotifier<bool> privacyAcceptedNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: privacyAcceptedNotifier,
        builder: (context, valueAccepted, child) {
          return SizedBox(
            width: 25,
            height: 25,
            child: Checkbox(
              value: valueAccepted,
              onChanged: onCheckBoxToggle,
            ),
          );
        });
  }

  void onCheckBoxToggle(bool? value) {
    privacyAcceptedNotifier.value = value!;
  }
}

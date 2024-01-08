import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/validators/validation.dart';
import 'package:e_store/features/authentication/view/blocs/signup_cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import 'terms_and_condtions.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
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
                  validator: (val) => FieldValidator.validateEmptyField(val),
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
                  validator: (val) => FieldValidator.validateEmptyField(val),
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
            validator: (val) => FieldValidator.validateEmail(val),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // // password
          PassWordInputField(
            controller: _passwordController,
            validator: (val) => FieldValidator.validatePassword(val),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // confirm password
          PassWordInputField(
            controller: _rePasswordController,
            validator: (pwValue) => FieldValidator.validateConfirmPassword(
              pwValue,
              _passwordController.text,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          // //Terms & Conditions
          const Row(
            children: [
              TermsAgreementCheckBox(),
              SizedBox(width: AppSizes.defaultSpace),
              TermsAndConditionCheckBox(),
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
          )
        ],
      ),
    );
  }

  void _validateThenPerfromSignUp(BuildContext context) {
    final loginCubit = context.read<SignUpCubit>();

    // using a golbal key to access the agreement checkbox
    // else snackbar should be placed

    if (formKey.currentState!.validate()) {
      loginCubit.signUp(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      context.pushNamedRoute(Routes.verifyEmail);
    }
  }
}

class TermsAgreementCheckBox extends StatefulWidget {
  const TermsAgreementCheckBox({super.key});

  @override
  State<TermsAgreementCheckBox> createState() => _TermsAgreementCheckBoxState();
}

class _TermsAgreementCheckBoxState extends State<TermsAgreementCheckBox> {
  final isAgreed = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      height: 25,
      child: Checkbox(
        value: isAgreed,
        onChanged: (val) => setState(() => isAgreed != isAgreed),
      ),
    );
  }
}

class PassWordInputField extends StatefulWidget {
  const PassWordInputField({
    super.key,
    required this.controller,
    this.validator,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<PassWordInputField> createState() => _PassWordInputFieldState();
}

class _PassWordInputFieldState extends State<PassWordInputField> {
  final obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: false,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: AppTexts.password,
        labelStyle: context.textTheme.labelLarge,
        prefixIcon: const Icon(Iconsax.password_check),
        suffixIcon: IconButton(
          icon: Icon(obscureText ? Iconsax.eye_slash : Iconsax.eye),
          onPressed: () => setState(() => obscureText != obscureText),
        ),
      ),
      obscureText: obscureText,
      validator: widget.validator,
    );
  }
}

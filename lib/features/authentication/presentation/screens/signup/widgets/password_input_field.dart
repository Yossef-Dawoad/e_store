import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: false,
      controller: widget.controller,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: AppTexts.password,
        labelStyle: context.textTheme.labelLarge,
        prefixIcon: const Icon(Iconsax.password_check),
        suffixIcon: IconButton(
          onPressed: () => setState(() => obscureText = !obscureText),
          icon: Icon(obscureText ? Iconsax.eye_slash : Iconsax.eye),
        ),
      ),
      obscureText: obscureText,
      validator: widget.validator,
    );
  }
}

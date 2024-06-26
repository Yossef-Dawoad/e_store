import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/shared/logic/services/helper_functions.dart';
import 'package:flutter/material.dart';

class TermsAndConditionCheckBox extends StatelessWidget {
  const TermsAndConditionCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDarkMode(context);
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '${AppTexts.iAgreeTo} ',
            style: context.textTheme.bodySmall,
          ),
          TextSpan(
            text: AppTexts.privacyPolicy,
            style: context.textTheme.bodyMedium?.apply(
              decoration: TextDecoration.underline,
              color: isDark ? Palette.white : Palette.primary,
            ),
          ),
          TextSpan(
            text: ' ${AppTexts.and} ',
            style: context.textTheme.bodySmall,
          ),
          TextSpan(
            text: AppTexts.termsOfUse,
            style: context.textTheme.bodyMedium?.apply(
              decoration: TextDecoration.underline,
              color: isDark ? Palette.white : Palette.primary,
            ),
          ),
        ],
      ),
    );
  }
}

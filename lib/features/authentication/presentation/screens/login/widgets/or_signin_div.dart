import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

class TextBtwDivider extends StatelessWidget {
  const TextBtwDivider({
    super.key,
    required this.isDarkMode,
    required this.text,
  });
  final String text;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: isDarkMode ? Palette.darkGrey : Palette.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          text.toUpperCase(),
          style: context.textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDarkMode ? Palette.darkGrey : Palette.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/shared/logic/services/helper_functions.dart';
import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({
    super.key,
    this.onPressed,
    required this.title,
    this.btntitle,
    this.color,
  });
  final String title;
  final Color? color;
  final String? btntitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Text(
          title,
          style: context.textTheme.headlineSmall?.apply(
            color:
                color ?? (isDarkMode ? ColorPalette.white : ColorPalette.dark),
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        if (btntitle != null)
          TextButton(onPressed: onPressed, child: Text(btntitle!))
      ],
    );
  }
}

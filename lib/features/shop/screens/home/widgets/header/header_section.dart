import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
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
    return Row(
      children: [
        Text(
          title,
          style: context.textTheme.headlineSmall?.apply(
            color: color ?? ColorPalette.white,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        if (btntitle != null)
          TextButton(
            onPressed: onPressed,
            child: Text(btntitle!),
          )
      ],
    );
  }
}

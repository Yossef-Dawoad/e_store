import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CounterCartIcon extends StatelessWidget {
  const CounterCartIcon({
    super.key,
    required this.onPressed,
    this.color = Colors.white,
  });
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag, color: color),
        ),
        Positioned(
          right: 0.0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: ColorPalette.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                '2',
                style: context.textTheme.labelLarge?.apply(
                  color: ColorPalette.white,
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

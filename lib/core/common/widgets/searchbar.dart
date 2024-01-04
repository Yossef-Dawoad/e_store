import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.width,
    this.backgroundColor,
    this.boder,
  });

  final double width;
  final Color? backgroundColor;
  final Border? boder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.defaultSpace,
      ),
      child: Container(
        width: width,
        padding: const EdgeInsets.all(AppSizes.sm),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
          border: boder ?? Border.all(color: ColorPalette.grey),
        ),
        child: Row(
          children: <Widget>[
            const Icon(Iconsax.search_normal, color: ColorPalette.darkGrey),
            const SizedBox(width: AppSizes.spaceBtwSections),
            Text(
              'Search in Store',
              style: context.textTheme.bodySmall?.apply(
                color: ColorPalette.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}

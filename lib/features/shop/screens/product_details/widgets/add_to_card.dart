import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddTocard extends StatelessWidget {
  const AddTocard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.defaultSpace,
        vertical: AppSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: isDarkMode ? Palette.darkGrey : Palette.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppSizes.cardRadiusLg),
          topRight: Radius.circular(AppSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        children: [
          Row(
            children: [
              const CircleAvatar(
                child: Icon(Iconsax.minus, color: Palette.white, size: AppSizes.iconMd),
              ),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Text('2', style: context.textTheme.titleSmall),
              const SizedBox(width: AppSizes.spaceBtwItems),
              const CircleAvatar(
                child: Icon(Iconsax.add, color: Palette.white, size: AppSizes.iconMd),
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(AppSizes.md),
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
              ),
            ),
            child: const Text('Add to cart'),
          ),
        ],
      ),
    );
  }
}

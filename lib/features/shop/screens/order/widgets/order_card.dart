import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.md),
      decoration: BoxDecoration(
        color: context.isDarkMode ? ColorPalette.darkerGrey : ColorPalette.light,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Icon(Iconsax.ship),
              const SizedBox(width: AppSizes.spaceBtwItems / 2),

              // -- Status & Date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Prossesing',
                      style: context.textTheme.bodyLarge
                          ?.copyWith(color: ColorPalette.primary, fontWeight: FontWeight.bold),
                    ),
                    Text('12 Nov 2021', style: context.textTheme.headlineSmall),
                  ],
                ),
              ),

              IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_34)),
            ],
          ),
          const Divider(height: AppSizes.spaceBtwItems),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Icon(Iconsax.tag),
                    const SizedBox(width: AppSizes.spaceBtwItems / 2),

                    // -- Status & Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order', style: context.textTheme.labelMedium),
                          Text('#206482', style: context.textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Icon(Iconsax.calendar),
                    const SizedBox(width: AppSizes.spaceBtwItems / 2),

                    // -- Status & Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shipping Date', style: context.textTheme.labelMedium),
                          Text('02 Feb 2025', style: context.textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

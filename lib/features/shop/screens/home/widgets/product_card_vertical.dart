import 'package:e_store/core/shared/styles/shadow_styles.dart';
import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProducCardVertical extends StatelessWidget {
  const ProducCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: () => context.pushNamedRoute(Routes.productDetail),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: isDark ? Palette.darkerGrey : Palette.white,
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          boxShadow: [ShadowStyles.verticalProductCardShadow],
        ),
        child: Column(
          children: [
            Container(
              height: 170,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: isDark ? Palette.dark : Palette.light,
                borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
              ),
              child: Stack(
                children: [
                  /// thumbnail
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSizes.md),
                      image: const DecorationImage(
                        image: AssetImage(AppImages.productImage1),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),

                  /// sale-tag
                  Positioned(
                    top: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSizes.xs,
                        horizontal: AppSizes.sm,
                      ),
                      decoration: BoxDecoration(
                        color: Palette.secondary.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(AppSizes.sm),
                      ),
                      child: Text(
                        '25%',
                        style: context.textTheme.labelLarge?.apply(color: Palette.black),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.heart5,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),

            /// Details
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Green Nike Air Shoes',
                    style: context.textTheme.labelLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: context.textTheme.labelMedium,
                      ),
                      const SizedBox(width: AppSizes.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: Palette.primary,
                        size: AppSizes.iconXs,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.sm,
                    horizontal: AppSizes.sm,
                  ),
                  child: Text(
                    '\$35.9',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Container(
                    width: AppSizes.iconLg * 1.3,
                    height: AppSizes.iconLg * 1.3,
                    decoration: BoxDecoration(
                      color: isDark ? Palette.dark : Palette.light,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Icon(
                      Iconsax.add,
                      size: AppSizes.iconLg,
                      color: isDark ? Palette.light : Palette.dark,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:e_store/core/shared/widgets/cusom_appbar/basic_appbar.dart';
import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/home/widgets/header/rounded_bottom_corner.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'product_image_small_showcase.dart';

class ProductImagesSlider extends StatelessWidget {
  const ProductImagesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    return RoundedBottomCornerContainer(
      width: double.infinity,
      child: Container(
        color: isDarkMode ? Palette.darkerGrey : Palette.light,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(
                  AppSizes.productImageRadius * 2.0,
                ),
                child: Image.asset(AppImages.productImage1),
              ),
            ),
            Positioned(
              bottom: 30,
              left: AppSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      ProductImageSmallShowCase(isDarkMode: isDarkMode),
                  separatorBuilder: (_, __) => const SizedBox(width: AppSizes.spaceBtwItems),
                ),
              ),
            ),
            BasicAppBar(
              title: const Text('product name'),
              implyLeading: true,
              actions: [
                IconButton.filled(
                  style: IconButton.styleFrom(
                    backgroundColor: isDarkMode ? Palette.dark : Colors.white,
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

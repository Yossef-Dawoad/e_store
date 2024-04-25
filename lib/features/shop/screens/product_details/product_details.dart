import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/ratingcount_star.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/product_attribute.dart';
import 'widgets/product_images_slider.dart';
import 'widgets/product_metadata.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- product image slider --
            const ProductImagesSlider(),

            /// --- product details --

            Padding(
              padding: const EdgeInsets.only(
                right: AppSizes.defaultSpace,
                left: AppSizes.defaultSpace,
                bottom: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating and share button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const RatingCountStars(),
                      // share icon
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.share),
                      ),
                    ],
                  ),
                  const ProductMetaData(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  // -- product attributes
                  const ProductAttributes(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

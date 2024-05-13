import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/home/widgets/header/header_title.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/add_to_card.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/ratingcount_star.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/product_attribute.dart';
import 'widgets/product_images_slider.dart';
import 'widgets/product_metadata.dart';
import 'package:readmore/readmore.dart';

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
                  // -- Checkout Button
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),

                  const SizedBox(height: AppSizes.spaceBtwSections),

                  const ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    colorClickableText: ColorPalette.primary,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),

                  // -- Reviews
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  TitleHeader(
                    title: 'Reviews(199)',
                    btntitle: 'view all',
                    onPressed: () => context.pushNamedRoute(Routes.reviews),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const AddTocard(),
    );
  }
}

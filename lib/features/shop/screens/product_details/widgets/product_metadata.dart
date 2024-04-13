import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/product_price.dart';
import 'package:flutter/material.dart';

import 'brand_tile.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.sm,
                vertical: AppSizes.xs,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.sm),
                color: ColorPalette.secondary.withOpacity(0.8),
              ),
              child: Text(
                '25%',
                style: context.textTheme.labelLarge?.apply(color: Colors.black),
              ),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            //price
            const ProductPrice(
              price: '250',
              currency: '\$',
              lineThroughPrice: true,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            const ProductPrice(
              price: '175',
              currency: '\$',
            ),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Text(
          'Product Name',
          style: context.textTheme.headlineMedium,
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),

        // brand
        const BrandTile(
          name: 'Nike',
          image: AppImages.nikeLogo,
        ),

        // stock status
        const SizedBox(height: AppSizes.spaceBtwItems),
        Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.green),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('In Stock', style: context.textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}

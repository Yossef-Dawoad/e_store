import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/home/widgets/header/header_title.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/product_price.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color: isDarkMode ? ColorPalette.darkGrey : ColorPalette.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Column(
            children: [
              Row(
                children: [
                  TitleHeader(title: 'Variation'),
                  SizedBox(width: AppSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('price: '),
                          ProductPrice(
                              price: '25',
                              currency: '\$',
                              lineThroughPrice: true),
                          SizedBox(width: AppSizes.spaceBtwItems),
                          ProductPrice(price: '20', currency: '\$')
                        ],
                      ),
                      Row(
                        children: [
                          Text('Stock: '),
                          Text(
                            'In Stock',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Text(
                'This is the discription of the product and it can go 4 max-lines',
                style: TextStyle(
                  fontSize: 12,
                ),
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: AppSizes.defaultSpace),
        // -- Attributes --
        Column(
          children: [
            const TitleHeader(title: 'Color'),
            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            ChoiceChip(
              label: const Text('Green'),
              selected: false,
              shape: const StadiumBorder(),
              onSelected: (value) {},
            )
          ],
        )
      ],
    );
  }
}

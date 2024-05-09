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
          child: Column(
            children: [
              Row(
                children: [
                  const TitleHeader(title: 'Variation'),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'price: ',
                            style: context.textTheme.labelMedium,
                          ),
                          const ProductPrice(
                              price: '25',
                              currency: '\$',
                              lineThroughPrice: true),
                          const SizedBox(width: AppSizes.sm),
                          const ProductPrice(price: '20', currency: '\$')
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Stock: ',
                            style: context.textTheme.labelMedium,
                          ),
                          const Text(
                            'In Stock',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Text(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleHeader(title: 'Color'),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                AppChoiceChip(
                  // text: 'blue',
                  selectedColor: Colors.blue,
                  isSelected: true,
                  onSelected: (val) {},
                ),
                AppChoiceChip(
                  // text: 'green',
                  selectedColor: Colors.green,
                  isSelected: false,
                  onSelected: (val) {},
                ),
                AppChoiceChip(
                  // text: 'red',
                  selectedColor: Colors.red,
                  isSelected: false,
                  onSelected: (val) {},
                )
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleHeader(title: 'Sizes'),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(
                  text: 'EU 38',
                  // selectedColor: Colors.blue,
                  isSelected: true,
                  onSelected: (val) {},
                ),
                AppChoiceChip(
                  text: 'EU 34',
                  // selectedColor: Colors.green,
                  isSelected: false,
                  onSelected: (val) {},
                ),
                AppChoiceChip(
                  text: 'EU 30',
                  // selectedColor: Colors.red,
                  isSelected: false,
                  onSelected: (val) {},
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}

class AppChoiceChip extends StatelessWidget {
  const AppChoiceChip({
    super.key,
    this.text = "",
    this.isSelected = false,
    this.selectedColor = ColorPalette.primary,
    required this.onSelected,
  });
  final String text;
  final Color selectedColor;
  final bool isSelected;
  final ValueChanged<bool> onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(text),
      selected: isSelected,
      shape: text.isEmpty ? const CircleBorder() : const StadiumBorder(),
      selectedColor: selectedColor,
      onSelected: onSelected,
      // backgroundColor: selectedColor,
      labelPadding: text.isEmpty ? const EdgeInsets.all(0) : null,
      padding: text.isEmpty ? const EdgeInsets.all(0) : null,
      avatar: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 32,
        child: CircleAvatar(backgroundColor: selectedColor, radius: 20),
      ),
    );
  }
}

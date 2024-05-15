import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/store/widgets/brand_container_band.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 70,
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            color: context.isDarkMode ? Palette.darkerGrey : Palette.light,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(AppImages.productImage1),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        // -- Title, Price, Size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BrandTitleWithVerifiedIcon(title: 'Nike'),
            Flexible(
              child: Text(
                'Black Sport Shoes',
                style: context.textTheme.titleSmall,
                maxLines: 1,
              ),
            ),
            Text.rich(
              TextSpan(children: [
                TextSpan(text: 'Color: ', style: context.textTheme.bodySmall),
                TextSpan(text: 'Green', style: context.textTheme.bodyLarge),
                TextSpan(text: '  Size: ', style: context.textTheme.bodySmall),
                TextSpan(text: 'UK 08', style: context.textTheme.bodyLarge),
              ]),
            ),
            // price Row
            // Row(
            //   children: [
            //     Text('\$200', style: context.textTheme.titleLarge),
            //     const Spacer(),
            //     IconButton(
            //       icon: Icon(Iconsax.trash),
            //       color: context.isDarkMode ? Colors.white : Colors.black,
            //       onPressed: () {},
            //     ),
            //   ],
            // )
          ],
        )
      ],
    );
  }
}

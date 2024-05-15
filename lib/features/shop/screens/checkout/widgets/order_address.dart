import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/home/widgets/header/header_title.dart';
import 'package:flutter/material.dart';

class OrderAddressDetails extends StatelessWidget {
  const OrderAddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleHeader(title: 'Shipping Address', btntitle: 'Change', onPressed: () {}),
        Text('work address', style: context.textTheme.bodyLarge),
        Row(
          children: [
            Icon(
              Icons.phone,
              size: 18,
              color: context.isDarkMode ? Palette.lightGrey : Palette.darkGrey,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('0123456789', style: context.textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Row(
          children: [
            Icon(
              Icons.location_history,
              size: 18,
              color: context.isDarkMode ? Palette.lightGrey : Palette.darkGrey,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('DownTown, Cairo, Egypt', style: context.textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}

import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

class CouponCodeWideget extends StatelessWidget {
  const CouponCodeWideget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.sm).copyWith(left: AppSizes.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: context.isDarkMode ? ColorPalette.darkerGrey : ColorPalette.light,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Have a promo code? Enter Here'),
            ),
          ),
          // Apply Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Apply'),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections)
        ],
      ),
    );
  }
}

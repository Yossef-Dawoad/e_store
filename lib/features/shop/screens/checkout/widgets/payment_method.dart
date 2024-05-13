import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/home/widgets/header/header_title.dart';
import 'package:flutter/material.dart';

class PaymentMethodDetails extends StatelessWidget {
  const PaymentMethodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleHeader(
          title: 'Payment Method',
          btntitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        Row(
          children: [
            Container(
              width: 60,
              height: 35,
              decoration: BoxDecoration(
                color: context.isDarkMode ? ColorPalette.darkerGrey : ColorPalette.light,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(AppImages.paypal, fit: BoxFit.contain),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems / 2),
            Text('Paypal', style: context.textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}

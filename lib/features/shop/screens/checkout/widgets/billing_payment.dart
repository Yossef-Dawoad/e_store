import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

class BillingPaymentDetails extends StatelessWidget {
  const BillingPaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // -- Billing Details (Subtotal)
        Row(
          children: [
            Expanded(child: Text('Subtotal', style: context.textTheme.bodyMedium)),
            Text('\$265', style: context.textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2.0),

        // -- Shipping Fee
        Row(
          children: [
            Expanded(child: Text('Shipping Fee', style: context.textTheme.bodyMedium)),
            Text('\$6', style: context.textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2.0),

        // -- Tax Fee
        Row(
          children: [
            Expanded(child: Text('Tax Fee', style: context.textTheme.bodyMedium)),
            Text('\$6', style: context.textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2.0),

        // -- Order Total
        Row(
          children: [
            Expanded(child: Text('Order Total', style: context.textTheme.bodyMedium)),
            Text('\$289', style: context.textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2.0),
      ],
    );
  }
}

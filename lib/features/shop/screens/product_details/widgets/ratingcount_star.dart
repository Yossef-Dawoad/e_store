import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RatingCountStars extends StatelessWidget {
  const RatingCountStars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Iconsax.star5, color: Colors.yellow, size: 24),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '5.0 ',
                style: context.textTheme.bodyLarge,
              ),
              const TextSpan(text: '(199)'),
            ],
          ),
        ),
      ],
    );
  }
}

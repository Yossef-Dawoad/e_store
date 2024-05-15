import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTile extends StatelessWidget {
  const BrandTile({
    super.key,
    required this.name,
    required this.image,
    this.isVerified = false,
  });
  final String name;
  final String image;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Image.asset(image),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems / 2.0),
        Text(name, style: context.textTheme.bodyLarge),
        const SizedBox(width: AppSizes.spaceBtwItems / 3.0),
        if (isVerified) const Icon(Iconsax.verify5, color: Palette.primary),
      ],
    );
  }
}

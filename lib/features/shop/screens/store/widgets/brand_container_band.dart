import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandContainerBand extends StatelessWidget {
  const BrandContainerBand({
    super.key,
    required this.isDark,
    this.showBorder = false,
  });

  final bool isDark;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
          color: isDark ? Palette.dark : Palette.light,
          borderRadius: BorderRadius.circular(10),
          border: showBorder
              ? Border.all(color: isDark ? Colors.grey[300]! : Colors.grey[800]!)
              : null),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 38,
            height: 38,
            child: Image.asset(
              AppImages.clothIcon,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(width: 10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerifiedIcon(title: 'Nike'),
              Text(
                '256 products',
                style: context.textTheme.bodySmall?.copyWith(fontSize: 10.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BrandTitleWithVerifiedIcon extends StatelessWidget {
  const BrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: context.textTheme.bodyLarge),
        const SizedBox(width: 6.0),
        const Icon(Iconsax.verify5, size: AppSizes.iconSm),
      ],
    );
  }
}

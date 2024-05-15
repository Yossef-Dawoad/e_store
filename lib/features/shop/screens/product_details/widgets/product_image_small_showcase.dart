import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductImageSmallShowCase extends StatelessWidget {
  const ProductImageSmallShowCase({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding: const EdgeInsets.all(AppSizes.sm),
      decoration: BoxDecoration(
        border: Border.all(color: Palette.primary),
        borderRadius: BorderRadius.circular(10),
        color: isDarkMode ? Palette.grey : Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          AppImages.productImage3,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

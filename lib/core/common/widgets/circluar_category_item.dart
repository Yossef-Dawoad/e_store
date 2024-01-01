import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CircluarCategoryItem extends StatelessWidget {
  const CircluarCategoryItem({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });
  final String image;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = ECHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, right: 12.0),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                color: isDark ? ColorPalette.dark : ColorPalette.light,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: isDark ? ColorPalette.light : ColorPalette.dark,
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Text(
              title,
              style: context.textTheme.labelMedium?.apply(color: Colors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}

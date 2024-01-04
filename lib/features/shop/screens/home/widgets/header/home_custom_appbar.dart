import 'package:flutter/material.dart';

import 'package:e_store/core/common/widgets/cart_counter_icon.dart';
import 'package:e_store/core/common/widgets/circluar_category_item.dart';
import 'package:e_store/core/common/widgets/cusom_appbar/basic_appbar.dart';
import 'package:e_store/core/common/widgets/searchbar.dart';
import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/utils/helpers/helper_functions.dart';

import 'header_curved_shape.dart';
import 'header_section.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    final screenWidth = ECHelperFunctions.screenWidth(context);
    final isDark = ECHelperFunctions.isDarkMode(context);
    return ClipReverseBottomSheetShape(
      height: height,
      width: double.maxFinite,
      child: Column(
        children: [
          BasicAppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppTexts.homeAppbarTitle,
                  style: context.textTheme.labelMedium?.apply(
                    color: ColorPalette.grey,
                  ),
                ),
                Text(
                  AppTexts.homeAppbarSubTitle,
                  style: context.textTheme.labelMedium?.apply(
                    color: ColorPalette.white,
                  ),
                )
              ],
            ),
            actions: [
              CounterCartIcon(onPressed: () {}),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// searchbar
          CustomSearchBar(
            width: screenWidth,
            backgroundColor: isDark ? ColorPalette.dark : ColorPalette.light,
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),

          // cargeories
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.defaultSpace,
            ),
            child: Column(
              children: [
                /// section title
                const HeaderSection(title: 'Popular Categories'),

                // // section items
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, idx) => CircluarCategoryItem(
                      image: ECImages.shoeIcon,
                      title: 'Shoes',
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

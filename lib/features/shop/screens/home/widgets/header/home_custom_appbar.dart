import 'package:flutter/material.dart';

import 'package:e_store/core/shared/widgets/cart_counter_icon.dart';
import 'package:e_store/core/shared/widgets/circluar_category_item.dart';
import 'package:e_store/core/shared/widgets/cusom_appbar/basic_appbar.dart';
import 'package:e_store/core/shared/widgets/searchbar.dart';
import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/constants/text_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/shared/logic/services/helper_functions.dart';

import 'rounded_bottom_corner.dart';
import 'header_title.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = HelperFunctions.screenWidth(context);
    final isDark = HelperFunctions.isDarkMode(context);
    return RoundedBottomCornerContainer(
      // height: height,
      width: double.maxFinite,
      child: Column(
        children: [
          BasicAppBar(
            implyLeading: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppTexts.homeAppbarTitle,
                  style: context.textTheme.labelMedium?.apply(
                    color: Palette.grey,
                  ),
                ),
                Text(
                  AppTexts.homeAppbarSubTitle,
                  style: context.textTheme.labelMedium?.apply(
                    color: Palette.white,
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
            backgroundColor: isDark ? Palette.dark : Palette.light,
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),

          // cargeories
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            child: Column(
              children: [
                /// section title
                const TitleHeader(
                  title: 'Popular Categories',
                  color: Colors.white,
                ),

                // // section items
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, idx) => CircluarCategoryItem(
                      image: AppImages.shoeIcon,
                      title: 'Shoes',
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwSections),
              ],
            ),
          )
        ],
      ),
    );
  }
}

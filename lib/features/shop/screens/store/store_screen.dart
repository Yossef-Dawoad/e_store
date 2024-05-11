import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/shared/widgets/cusom_appbar/custom_tabbar.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:flutter/material.dart';

import 'package:e_store/core/shared/widgets/cart_counter_icon.dart';
import 'package:e_store/core/shared/widgets/searchbar.dart';
import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/core/shared/logic/services/helper_functions.dart';
import 'package:e_store/features/shop/screens/home/widgets/header/header_title.dart';

import 'widgets/brand_container_band.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = HelperFunctions.screenWidth(context);
    final isDark = HelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: isDark ? ColorPalette.dark : ColorPalette.light,
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
              sliver: SliverAppBar(
                pinned: true,
                // floating: true,
                expandedHeight: 480,
                toolbarHeight: AppSizes.appBarHeight,
                backgroundColor: isDark ? ColorPalette.dark : ColorPalette.light,
                title: Text('Store', style: context.textTheme.headlineMedium),
                actions: [
                  CounterCartIcon(onPressed: () {}),
                ],
                flexibleSpace:
                    ExpandedBrandShowCaseAppBar(screenWidth: screenWidth, isDark: isDark),
                bottom: const CustomTabApp(
                  tabs: [
                    Tab(text: 'Sports'),
                    Tab(text: 'Furniture'),
                    Tab(text: 'Electronics'),
                    Tab(text: 'Clothes'),
                    Tab(text: 'Cosmetics'),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: CategoricalTabViews(isDark: isDark),
            )
          ],
        ),
      ),
    );
  }
}

class ExpandedBrandShowCaseAppBar extends StatelessWidget {
  const ExpandedBrandShowCaseAppBar({
    super.key,
    required this.screenWidth,
    required this.isDark,
  });

  final double screenWidth;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            //--- searchbar
            const SizedBox(height: AppSizes.spaceBtwItems),
            CustomSearchBar(
              width: screenWidth,
              backgroundColor: isDark ? ColorPalette.dark : ColorPalette.light,
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            //--- features brands
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                children: [
                  TitleHeader(
                    title: 'Featured Brands',
                    btntitle: 'view all',
                    onPressed: () {},
                  ),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: AppSizes.gridViewSpacing,
                      crossAxisSpacing: AppSizes.gridViewSpacing,
                      mainAxisExtent: 88,
                    ),
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => BrandContainerBand(
                      isDark: isDark,
                      showBorder: true,
                    ),
                  )
                ],
              ),
              // Tabs (for categories)
            ),
          ],
        ),
      ),
    );
  }
}

class CategoricalTabViews extends StatelessWidget {
  const CategoricalTabViews({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              BrandShowCaseCard(
                isDark: isDark,
                images: const [
                  AppImages.productImage1,
                  AppImages.productImage2,
                  AppImages.productImage3
                ],
              )
            ],
          ),
        ),
        ...List.generate(4, (index) => Container()),
      ],
    );
  }
}

class BrandShowCaseCard extends StatelessWidget {
  const BrandShowCaseCard({
    super.key,
    required this.isDark,
    required this.images,
  });

  final bool isDark;

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.md),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
      ),
      child: Column(
        children: [
          BrandContainerBand(isDark: isDark),
          Row(
            children: images
                .map(
                  (img) => Expanded(
                    child: Container(
                      height: 120,
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: ColorPalette.darkerGrey,
                        borderRadius: BorderRadius.circular(
                          AppSizes.borderRadiusSm,
                        ),
                      ),
                      child: Image(image: AssetImage(img), fit: BoxFit.contain),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}

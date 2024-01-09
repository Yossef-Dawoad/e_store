import 'package:e_store/core/common/widgets/carousel_slider.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/helpers/helper_functions.dart';
import 'package:e_store/features/shop/screens/home/widgets/header/header_section.dart';
import 'package:flutter/material.dart';

import 'widgets/header/home_custom_appbar.dart';
import 'widgets/product_gridview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = HelperFunctions.screenHeight(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            HomeCustomAppBar(height: screenHeight * 0.42),

            /// body
            /// Carousel
            CarouselSlider(items: [
              CarouselSlideData(image: AppImages.banner1),
              CarouselSlideData(image: AppImages.banner2),
              CarouselSlideData(image: AppImages.banner3),
              CarouselSlideData(image: AppImages.banner4),
            ]),
            const SizedBox(height: AppSizes.spaceBtwSections),

            /// Product GridView
            HeaderSection(title: 'Popular Products', onPressed: () {}),
            const SizedBox(height: AppSizes.spaceBtwItems),
            const ProductGridView(),
          ],
        ),
      ),
    );
  }
}

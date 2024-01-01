import 'package:e_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'product_card_vertical.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: AppSizes.gridViewSpacing,
          crossAxisSpacing: AppSizes.gridViewSpacing,
          mainAxisExtent: 288,
        ),
        padding: const EdgeInsets.all(12.0),
        itemCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const ProducCardVertical());
  }
}

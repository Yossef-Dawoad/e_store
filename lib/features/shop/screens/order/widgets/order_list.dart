import 'package:flutter/material.dart';

import 'package:e_store/core/constants/sizes.dart';

import 'order_card.dart';

class ListOfOrderItems extends StatelessWidget {
  const ListOfOrderItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      separatorBuilder: (context, index) => const SizedBox(height: AppSizes.spaceBtwItems),
      itemBuilder: (ctx, idx) => const OrderCard(),
    );
  }
}

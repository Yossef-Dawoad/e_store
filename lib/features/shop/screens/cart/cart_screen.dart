import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/shared/widgets/cusom_appbar/basic_appbar.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: Text('Cart', style: context.textTheme.headlineSmall),
        implyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(height: AppSizes.spaceBtwSections),
          itemCount: 4,
          itemBuilder: (_, idx) => const CartItem(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$250'),
        ),
      ),
    );
  }
}

import 'package:e_store/core/common/widgets/cusom_appbar/basic_appbar.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/home/widgets/product_gridview.dart';
import 'package:flutter/material.dart';

class WishLessScreen extends StatelessWidget {
  const WishLessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: Text(
          'Wishlist',
          style: context.textTheme.headlineMedium,
        ),
        actions: [IconButton(icon: const Icon(Icons.add), onPressed: () {})],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [ProductGridView()],
          ),
        ),
      ),
    );
  }
}

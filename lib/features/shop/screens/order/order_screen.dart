import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/shared/widgets/cusom_appbar/basic_appbar.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/order/widgets/order_list.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: Text('My Orders', style: context.textTheme.headlineSmall),
        implyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: ListOfOrderItems(),
      ),
    );
  }
}

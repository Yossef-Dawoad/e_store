import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
    required this.price,
    required this.currency,
    this.lineThroughPrice = false,
  });
  final String price;
  final bool lineThroughPrice;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Text(
      currency + price,
      style: lineThroughPrice
          ? context.textTheme.titleSmall
              ?.apply(decoration: TextDecoration.lineThrough)
          : context.textTheme.headlineMedium,
    );
  }
}

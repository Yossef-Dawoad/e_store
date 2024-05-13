import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/shared/widgets/cusom_appbar/basic_appbar.dart';
import 'package:e_store/core/shared/widgets/success_screen.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:flutter/material.dart';

import 'widgets/billing_payment.dart';
import 'widgets/coupon_code.dart';
import 'widgets/payment_method.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(title: Text('Order Review', style: context.textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSizes.defaultSpace),
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(height: AppSizes.spaceBtwSections),
                  itemCount: 4,
                  itemBuilder: (_, idx) => const CartItem(),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // -- Coupon code
              const CouponCodeWideget(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // -- Billing Payment Section
              Container(
                decoration: BoxDecoration(
                  color: context.isDarkMode ? ColorPalette.darkerGrey : ColorPalette.light,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(AppSizes.md),
                child: const Column(
                  children: [
                    BillingPaymentDetails(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    Divider(),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    // -- Payment Method
                    PaymentMethodDetails()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => context.pushRoute(SuccessScreen(
            title: 'Payment Success',
            image: AppImages.successfulPaymentIcon,
            subTitle: 'Your order has been placed successfully, And Will be shipped soon',
            onPressed: () => context.pushNamedRoute(Routes.navigationMenu),
          )),
          child: const Text('Checkout \$250'),
        ),
      ),
    );
  }
}

import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/shared/widgets/cusom_appbar/basic_appbar.dart';
import 'package:e_store/core/shared/widgets/product/rating_bar.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

import 'widgets/rating_bar.dart';
import 'widgets/user_review_card.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(title: Text('Reviews & Ratings')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and reviews are verified and from people who bought and use the same product"),
              const SizedBox(height: AppSizes.spaceBtwItems),

              // -- Overall Ratings
              const OverAllRatingStars(),
              const AppRatingBar(ratings: 4.7),
              Text("12,345 ratings", style: context.textTheme.bodySmall),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // User Review list
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class OverAllRatingStars extends StatelessWidget {
  const OverAllRatingStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text("4.7", style: context.textTheme.displayLarge),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingLinearProgressBar(title: "5", ratePrecentage: 0.6),
              RatingLinearProgressBar(title: "4", ratePrecentage: 0.8),
              RatingLinearProgressBar(title: "3", ratePrecentage: 0.4),
              RatingLinearProgressBar(title: "2", ratePrecentage: 0.2),
              RatingLinearProgressBar(title: "1", ratePrecentage: 0.05),
            ],
          ),
        )
      ],
    );
  }
}

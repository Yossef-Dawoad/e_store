import 'package:e_store/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class AppRatingBar extends StatelessWidget {
  const AppRatingBar({
    super.key,
    required this.ratings,
  });
  final double ratings;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: ratings,
      itemSize: 20,
      itemBuilder: (context, index) => const Icon(
        Iconsax.star1,
        color: Palette.primary,
      ),
    );
  }
}

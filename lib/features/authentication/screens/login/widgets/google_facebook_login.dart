import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class GoogleFaceBookButton extends StatelessWidget {
  const GoogleFaceBookButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: ColorPalette.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: ECSizes.iconMd,
              height: ECSizes.iconMd,
              image: AssetImage(ECImages.google),
            ),
          ),
        ),
        const SizedBox(width: ECSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: ColorPalette.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: ECSizes.iconMd,
              height: ECSizes.iconMd,
              image: AssetImage(ECImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/device/device_utility.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ECSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: DeviceUtils.screenWidth(context) * 0.8,
            height: DeviceUtils.screenHeight(context) * 0.6,
          ),
          Text(
            title,
            style: context.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: ECSizes.spaceBtwItems),
          Text(
            subTitle,
            style: context.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

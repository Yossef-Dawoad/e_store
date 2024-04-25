import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CenterAnimationLoaderWidget extends StatelessWidget {
  const CenterAnimationLoaderWidget({
    super.key,
    required this.animationUrl,
    required this.text,
    this.onSubmit,
  });
  final String animationUrl;
  final String text;
  final VoidCallback? onSubmit;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animationUrl, width: size.width * 0.8),
          const SizedBox(height: AppSizes.defaultSpace),
          Text(
            text,
            style: context.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSizes.defaultSpace),
          if (onSubmit != null)
            SizedBox(
              width: 250,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: ColorPalette.dark),
                onPressed: onSubmit,
                child: const Text('Continue'),
              ),
            ),
        ],
      ),
    );
  }
}

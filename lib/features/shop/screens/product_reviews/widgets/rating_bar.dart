import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

class RatingLinearProgressBar extends StatelessWidget {
  const RatingLinearProgressBar({
    super.key,
    required this.title,
    required this.ratePrecentage,
  });
  final String title;
  final double ratePrecentage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Text(title, style: context.textTheme.bodyMedium)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: context.screenWidth * 0.5,
            child: LinearProgressIndicator(
              value: ratePrecentage,
              minHeight: 12,
              backgroundColor: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              valueColor: const AlwaysStoppedAnimation<Color>(
                Palette.primary,
              ),
            ),
          ),
        )
      ],
    );
  }
}

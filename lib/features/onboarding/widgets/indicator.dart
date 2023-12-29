import 'package:e_store/core/constants/colors.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int count;
  final PageController controller;

  const Indicator({
    super.key,
    required this.controller,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    final currentIndex = controller.page?.round() ?? 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => InkWell(
          onTap: () {
            controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          },
          child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 300),
            width: index == currentIndex ? 50 : 20,
            height: 16.0,
            margin: const EdgeInsets.symmetric(horizontal: 6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: index == currentIndex
                  ? ColorPalette.primary
                  : ColorPalette.lightGrey,
            ),
          ),
        ),
      ),
    );
  }
}

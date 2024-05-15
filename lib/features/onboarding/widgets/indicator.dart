import 'package:flutter/material.dart';

import 'package:e_store/core/constants/colors.dart';

class Indicator extends StatelessWidget {
  final int count;
  final double dotHeight;
  final PageController controller;

  const Indicator({
    super.key,
    required this.controller,
    required this.count,
    required this.dotHeight,
  });

  @override
  Widget build(BuildContext context) {
    final currentPageIndex = controller.page?.round() ?? 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => IndicatorDot(
          controller: controller,
          index: index,
          currentPageIndex: currentPageIndex,
          dotHeight: dotHeight,
        ),
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    super.key,
    required this.controller,
    required this.index,
    required this.currentPageIndex,
    this.dotHeight = 50,
  });

  final PageController controller;
  final int currentPageIndex;
  final int index;
  final double dotHeight;

  @override
  Widget build(BuildContext context) {
    final dotColor = (index == currentPageIndex) ? Palette.primary : Palette.grey;
    final dotWidth = (index == currentPageIndex) ? 50.0 : 20.0;
    return InkWell(
      onTap: () => controller.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      ),
      child: AnimatedContainer(
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 300),
        width: dotWidth,
        height: dotHeight,
        margin: const EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: dotColor,
        ),
      ),
    );
  }
}

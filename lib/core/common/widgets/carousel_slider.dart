import 'package:e_store/features/onboarding/widgets/indicator.dart';
import 'package:flutter/material.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({
    super.key,
    required this.items,
    this.borderRadius = 20.0,
    this.viewportFraction,
    this.height = 200,
    this.dotHeight = 4.0,
  });
  final List<CarouselSlideData> items;
  final double borderRadius;
  final double? viewportFraction;
  final double height;
  final double dotHeight;

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  late PageController _pageController;

  int currentPageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
      viewportFraction: widget.viewportFraction ?? 0.9,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: widget.height,
          margin: const EdgeInsets.symmetric(vertical: 16.0),
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: _updatePageIndicator,
              itemCount: widget.items.length,
              itemBuilder: (ctx, idx) {
                double scale = currentPageIndex == idx ? 1.0 : 0.8;
                return TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0.0, end: scale),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  builder: (BuildContext context, double value, Widget? child) {
                    return Transform.scale(
                      scale: value,
                      child: child,
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(widget.borderRadius),
                      image: DecorationImage(
                        image: AssetImage(widget.items[idx].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }),
        ),
        Indicator(
          controller: _pageController,
          count: widget.items.length,
          dotHeight: widget.dotHeight,
        )
      ],
    );
  }

  void _updatePageIndicator(int index) {
    setState(() => currentPageIndex = index);
  }
}

class CarouselSlideData {
  final String image;
  final String? title;
  final VoidCallback? onPressed;

  CarouselSlideData({
    required this.image,
    this.title,
    this.onPressed,
  });
}

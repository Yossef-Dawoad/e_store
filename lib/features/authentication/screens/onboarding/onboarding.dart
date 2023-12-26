import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'models/page_content.dart';
import 'widgets/indicator.dart';
import 'widgets/onborading_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// horizontal scrollable pages
          PageView.builder(
            controller: _pageController,
            onPageChanged: _updatePageIndicator,
            itemCount: onBoardingPages.length,
            itemBuilder: (context, index) {
              final page = onBoardingPages[index];
              return OnBoardingPage(
                image: page.image,
                title: page.title,
                subTitle: page.subTitle,
              );
            },
          ),

          /// skip Button
          Positioned(
            top: kToolbarHeight,
            right: 24,
            child: TextButton(
              onPressed: () => _skiptoLastPage(exitRouteName: '/'),
              child: const Text('skip'),
            ),
          ),

          /// Dot Navigation
          Positioned(
            bottom: kBottomNavigationBarHeight + 20.0,
            left: 24,
            child: Indicator(count: 3, controller: _pageController),
          ),

          /// Circluar Navigation Button
          Positioned(
            right: 24,
            bottom: kBottomNavigationBarHeight + 20.0,
            child: ElevatedButton(
              onPressed: _navigateToNextPage,
              child: Row(
                children: [
                  if (currentPageIndex == onBoardingPages.length - 1)
                    const Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: Text("continue"),
                    ),
                  const Icon(Iconsax.arrow_right3),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _updatePageIndicator(int index) {
    setState(() => currentPageIndex = index);
  }

  void _skiptoLastPage({String exitRouteName = '/'}) {
    final lastPageIndex = onBoardingPages.length - 1;
    if (currentPageIndex != lastPageIndex) {
      _pageController.jumpToPage(lastPageIndex);
      return;
    }
    //TODO: SAVE THAT USER ALREADY SEE ONBOARDING PAGE
    Navigator.of(context).pushNamedAndRemoveUntil(
      exitRouteName,
      (Route<dynamic> route) => route.isFirst,
    );
  }

  void _navigateToNextPage() {
    if (currentPageIndex == onBoardingPages.length - 1) {
      _skiptoLastPage(exitRouteName: '/');
      return;
    }
    _pageController.nextPage(
      duration: const Duration(microseconds: 300),
      curve: Curves.easeIn,
    );
  }
}

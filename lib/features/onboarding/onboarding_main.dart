import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/shared/logic/services/storage_utility.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
  int _currentPageIndex = 0;

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
              onPressed: () => _skiptoLastPage(exitRouteName: Routes.signIn),
              child: const Text('skip'),
            ),
          ),

          /// Dot Navigation
          Positioned(
            bottom: kBottomNavigationBarHeight + 20.0,
            left: 24,
            child: Indicator(
              count: onBoardingPages.length,
              controller: _pageController,
              dotHeight: 16.0,
            ),
          ),

          /// Circluar Navigation Button
          Positioned(
            right: 24,
            bottom: kBottomNavigationBarHeight + 10.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
                shape: const StadiumBorder(),
              ),
              onPressed: () => _navigateToNextPage(
                exitsRouteName: Routes.signIn,
              ),
              child: (_currentPageIndex == onBoardingPages.length - 1)
                  ? const Text("continue")
                  : const Icon(
                      Icons.arrow_forward_ios,
                      color: ColorPalette.white,
                    ),
            ),
          )
        ],
      ),
    );
  }

  void _updatePageIndicator(int index) {
    setState(() => _currentPageIndex = index);
  }

  void _skiptoLastPage({String exitRouteName = '/'}) async {
    final lastPageIndex = onBoardingPages.length - 1;

    if (_currentPageIndex != lastPageIndex) {
      _pageController.jumpToPage(lastPageIndex);
      return;
    }

    final storage = LocalStorageManager.instance;
    await storage.saveData('initial_route', 1).then(
          (value) => Navigator.of(context).pushNamedAndRemoveUntil(
            exitRouteName,
            (Route<dynamic> route) => route.isFirst,
          ),
        );
    if (kDebugMode) {
      debugPrint('initial_route saved with value ${Routes.initialRoute}');
    }
  }

  void _navigateToNextPage({String exitsRouteName = '/'}) {
    if (_currentPageIndex == onBoardingPages.length - 1) {
      _skiptoLastPage(exitRouteName: exitsRouteName);
      return;
    }
    _pageController.nextPage(
      duration: const Duration(microseconds: 300),
      curve: Curves.easeIn,
    );
  }
}

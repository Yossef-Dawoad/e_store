import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/local_storage/storage_utility.dart';
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
  int currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
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
            bottom: kBottomNavigationBarHeight + 20.0,
            child: ElevatedButton(
                onPressed: () => _navigateToNextPage(
                      exitsRouteName: Routes.signIn,
                    ),
                child: (currentPageIndex == onBoardingPages.length - 1)
                    ? const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 2.0),
                        child: Text("continue"),
                      )
                    : Icon(
                        Icons.arrow_forward_ios,
                        color: isDarkMode
                            ? ColorPalette.white
                            : ColorPalette.primary,
                      )),
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

    final storage = LocalStorageManager.instance;
    storage.saveData('initial_route', 1).then(
          (value) => Navigator.of(context).pushNamedAndRemoveUntil(
            exitRouteName,
            (Route<dynamic> route) => route.isFirst,
          ),
        );
    if (kDebugMode) print('initial_route saved');
  }

  void _navigateToNextPage({String exitsRouteName = '/'}) {
    if (currentPageIndex == onBoardingPages.length - 1) {
      _skiptoLastPage(exitRouteName: exitsRouteName);
      return;
    }
    _pageController.nextPage(
      duration: const Duration(microseconds: 300),
      curve: Curves.easeIn,
    );
  }
}

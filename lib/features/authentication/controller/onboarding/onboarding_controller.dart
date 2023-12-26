import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// update Current Index when Page Scroll
  void updatePageIndicator(int index) {}

  /// Jump to the specific dot selected page
  void dotNavigationClick(index) {}

  /// Update Current Index & Jump to next page
  void nextPage() {}

  /// Update Current Index & Jump to last page
  void skipPage() {}
}

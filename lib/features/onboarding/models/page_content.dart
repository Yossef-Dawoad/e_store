import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/text_strings.dart';

class OnBoardingPageContent {
  final String title;
  final String subTitle;
  final String image;

  const OnBoardingPageContent({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

const List<OnBoardingPageContent> onBoardingPages = [
  OnBoardingPageContent(
    image: AppImages.onBoardingImage1,
    title: AppTexts.onBoardingTitle1,
    subTitle: AppTexts.onBoardingSubTitle1,
  ),
  OnBoardingPageContent(
    image: AppImages.onBoardingImage2,
    title: AppTexts.onBoardingTitle2,
    subTitle: AppTexts.onBoardingSubTitle2,
  ),
  OnBoardingPageContent(
    image: AppImages.onBoardingImage3,
    title: AppTexts.onBoardingTitle3,
    subTitle: AppTexts.onBoardingSubTitle3,
  ),
];

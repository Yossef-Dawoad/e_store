import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/text_strings.dart';

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
    image: ECImages.onBoardingImage1,
    title: ECTexts.onBoardingTitle1,
    subTitle: ECTexts.onBoardingSubTitle1,
  ),
  OnBoardingPageContent(
    image: ECImages.onBoardingImage2,
    title: ECTexts.onBoardingTitle2,
    subTitle: ECTexts.onBoardingSubTitle2,
  ),
  OnBoardingPageContent(
    image: ECImages.onBoardingImage3,
    title: ECTexts.onBoardingTitle3,
    subTitle: ECTexts.onBoardingSubTitle3,
  ),
];

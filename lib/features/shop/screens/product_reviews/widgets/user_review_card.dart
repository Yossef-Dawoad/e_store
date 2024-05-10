import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/shared/widgets/product/rating_bar.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AppImages.userProfileImage1),
                ),
                const SizedBox(width: AppSizes.spaceBtwItems),
                Text('John Doe', style: context.textTheme.bodyMedium),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        // Review
        Row(
          children: [
            const AppRatingBar(ratings: 4),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('01 Nov, 2023', style: context.textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        const ReadMoreText(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          trimLines: 3,
          colorClickableText: Colors.blue,
          trimMode: TrimMode.Line,
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:
                context.isDarkMode ? ColorPalette.darkGrey : ColorPalette.grey,
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Comany Name', style: context.textTheme.titleMedium),
                    Text('01 Nov, 2023', style: context.textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const ReadMoreText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  colorClickableText: ColorPalette.primary,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
      ],
    );
  }
}

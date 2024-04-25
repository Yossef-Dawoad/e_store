import 'package:e_store/core/shared/widgets/cusom_appbar/basic_appbar.dart';
import 'package:e_store/core/shared/widgets/list_tiles/profile_listtile.dart';
import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/routes/routes.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:e_store/features/shop/screens/home/widgets/header/header_title.dart';
import 'package:e_store/features/shop/screens/home/widgets/header/rounded_bottom_corner.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/list_menu_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            RoundedBottomCornerContainer(
              width: double.maxFinite,
              child: Column(
                children: [
                  BasicAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Settings',
                          style: context.textTheme.titleMedium?.apply(
                            color: ColorPalette.grey,
                          ),
                        ),
                        Text(
                          'Manage your account settings',
                          style: context.textTheme.titleLarge?.apply(
                            color: ColorPalette.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ProfileInfoTile(
                    onPressed: () => context.pushNamedRoute(Routes.profile),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  const TitleHeader(title: 'Account Settings'),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const MenuListTile(
                    title: 'My Address',
                    subtitle: 'Set shopping delivery Address',
                    icon: Iconsax.safe_home,
                  ),
                  const MenuListTile(
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                  ),
                  const MenuListTile(
                    title: 'My Orders',
                    subtitle: 'In-progress and complete Orders',
                    icon: Iconsax.bag_tick,
                  ),
                  const MenuListTile(
                    title: 'My Coupons',
                    subtitle: 'List of all your coupons',
                    icon: Iconsax.discount_shape,
                  ),
                  const MenuListTile(
                    title: 'Notification',
                    subtitle: 'All your notifications in one place',
                    icon: Iconsax.bank,
                  ),
                  const MenuListTile(
                    title: 'Account Security',
                    subtitle: 'Manage your data usage and connteced accounts',
                    icon: Iconsax.bank,
                  ),

                  // -- App Settings
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const TitleHeader(title: 'App Settings'),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  const MenuListTile(
                    title: 'Load Data',
                    subtitle: 'upload Data to your Store',
                    icon: Iconsax.document_upload,
                  ),
                  MenuListTile(
                    title: 'GeoLocation',
                    subtitle: 'Set Recommedations based on your location',
                    icon: Iconsax.location,
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  MenuListTile(
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    icon: Iconsax.security_safe,
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

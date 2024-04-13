import 'package:e_store/core/common/widgets/cusom_appbar/basic_appbar.dart';
import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/features/personalization/view/profile/widgets/profile_listtile.dart';
import 'package:e_store/features/shop/screens/home/widgets/header/header_title.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
        title: Text('Profile'),
        implyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                      width: 80,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(AppImages.user),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    )
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems / 2.0),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const TitleHeader(title: 'profile Information'),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const ProfileListTile(
                title: 'Name',
                subtitle: 'Yousef Dawoud',
                icon: Iconsax.arrow_right,
              ),
              const ProfileListTile(
                title: 'Username',
                subtitle: 'yousefdawoud',
                icon: Iconsax.arrow_right,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems / 2.0),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const TitleHeader(title: 'Personal Information'),
              const ProfileListTile(
                title: 'User ID',
                subtitle: '301519',
                icon: Iconsax.copy,
              ),
              const ProfileListTile(
                title: 'E-mail',
                subtitle: 'yossefdawoad15@gmail.com',
                icon: Iconsax.arrow_right,
              ),
              const ProfileListTile(
                title: 'Phone Number',
                subtitle: '01012992603',
                icon: Iconsax.arrow_right,
              ),
              const ProfileListTile(
                title: 'Phone Number',
                subtitle: '+20-101-299-2603',
                icon: Iconsax.arrow_right,
              ),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Your Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

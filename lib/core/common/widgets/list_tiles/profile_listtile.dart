import 'package:e_store/core/constants/image_strings.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage(AppImages.userProfileImage2),
      ),
      title: Text(
        'Yousef Dawoad',
        style: context.textTheme.headlineSmall?.apply(color: Colors.white),
      ),
      subtitle: Text(
        'yossefdawoad15@gmail.com',
        style: context.textTheme.bodySmall?.apply(color: Colors.white),
      ),
      trailing: IconButton(
        icon: const Icon(
          Iconsax.edit,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}

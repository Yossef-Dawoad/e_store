import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/shared/widgets/cusom_appbar/basic_appbar.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'add_new_address_screen.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
        title: Text('Addresses'),
        implyLeading: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              AddressCard(isSelected: false),
              SizedBox(height: AppSizes.spaceBtwSections),
              AddressCard(isSelected: false),
              SizedBox(height: AppSizes.spaceBtwSections),
              AddressCard(isSelected: true),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushRoute(const AddNewAddressScreen()),
        backgroundColor: ColorPalette.primary,
        child: const Icon(Icons.add, color: ColorPalette.white),
      ),
    );
  }
}

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    required this.isSelected,
  });
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      padding: const EdgeInsets.all(AppSizes.md),
      width: double.infinity,
      decoration: BoxDecoration(
        color: isSelected
            ? ColorPalette.primary.withOpacity(0.2)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? ColorPalette.primary : ColorPalette.darkerGrey,
          width: 2,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            child: Icon(
              isSelected ? Iconsax.tick_circle : null,
              color:
                  isSelected ? ColorPalette.primary : ColorPalette.darkerGrey,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Work',
                style: context.textTheme.titleLarge,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              Text(
                '18 ST, NEW YORK, USA',
                style: context.textTheme.titleSmall,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              const SizedBox(height: AppSizes.sm / 2),
              const Text(
                '(+20) 11411 9334',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}

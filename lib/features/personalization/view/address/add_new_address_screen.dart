import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/shared/widgets/cusom_appbar/basic_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
        title: Text('Add new Addresses'),
        implyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Address Name',
                      hintText: 'Work Space',
                      prefixIcon: Icon(Iconsax.map5)),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      hintText: '+20 1205 1251 21',
                      prefixIcon: Icon(Iconsax.mobile)),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'City',
                            hintText: 'Cairo',
                            prefixIcon: Icon(Iconsax.buildings)),
                      ),
                    ),
                    const SizedBox(width: AppSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Zip code',
                            hintText: '11001',
                            prefixIcon: Icon(Iconsax.code)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Street Address',
                      hintText: '123 Street',
                      prefixIcon: Icon(Iconsax.building_3)),
                ),
                const SizedBox(height: AppSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Country',
                      hintText: 'Egypt',
                      prefixIcon: Icon(Iconsax.global)),
                ),
                const SizedBox(height: AppSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: const Text('Save'), onPressed: () {}),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/constants/sizes.dart';
import 'package:e_store/core/shared/logic/services/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomTabApp extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabApp({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context);
    return Material(
      color: isDarkMode ? Palette.dark : Palette.light,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: Palette.primary,
        labelColor: isDarkMode ? Colors.white : Colors.black,
        unselectedLabelColor: Palette.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppSizes.appBarHeight);
}

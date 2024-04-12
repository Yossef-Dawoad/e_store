import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomTabApp extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabApp({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context);
    return Material(
      color: isDarkMode ? ColorPalette.dark : ColorPalette.light,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: ColorPalette.primary,
        labelColor: isDarkMode ? Colors.white : Colors.black,
        unselectedLabelColor: ColorPalette.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

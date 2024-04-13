import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final Widget? leading;
  final List<Widget>? actions;
  final EdgeInsets padding;
  final bool implyLeading;

  const BasicAppBar({
    super.key,
    required this.title,
    this.implyLeading = false,
    this.actions,
    this.leading,
    this.padding = const EdgeInsets.symmetric(horizontal: 20),
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    return Padding(
      padding: padding,
      child: AppBar(
        automaticallyImplyLeading: implyLeading,
        title: title,
        leading: leading ??
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              onPressed: () => context.popRoute(),
            ),
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

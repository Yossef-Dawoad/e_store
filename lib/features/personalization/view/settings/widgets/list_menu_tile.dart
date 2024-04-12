import 'package:e_store/core/constants/colors.dart';
import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

class MenuListTile extends StatelessWidget {
  const MenuListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: ColorPalette.primary),
      title: Text(title, style: context.textTheme.titleMedium),
      subtitle: Text(subtitle, style: context.textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}

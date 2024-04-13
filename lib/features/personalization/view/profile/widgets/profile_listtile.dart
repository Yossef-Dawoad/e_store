import 'package:e_store/core/utils/extensions/context_ext.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(title,
                style: context.textTheme.bodySmall,
                overflow: TextOverflow.ellipsis),
          ),
          Expanded(
            flex: 5,
            child: Text(
              subtitle,
              style: context.textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(icon, size: 18)
        ],
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonErrorPage extends StatelessWidget {
  const CommonErrorPage({
    super.key,
    this.title = 'Something went wrong!',
    required this.description,
    required this.icon,
    required this.onRetry,
    this.onRetryText = 'Try Again',
  });

  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onRetry;
  final String onRetryText;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(icon, size: 120, color: Colors.grey),
            const SizedBox(height: 12),
            Text(
              'Something went wrong!',
              style: theme.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                description,
                textAlign: TextAlign.center,
                maxLines: 6,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
        TextButton.icon(
          onPressed: onRetry,
          icon: const Icon(CupertinoIcons.refresh),
          label: Text(onRetryText),
        )
      ],
    );
  }
}

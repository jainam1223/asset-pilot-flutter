import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../indicators/icon_box.dart';
import '../widget_enums.dart';

/// Centered icon + title + message placeholder for an empty list/screen
/// (e.g. "No devices yet"). Domain-blind — callers supply their own icon,
/// copy, and semantic tint.
class EmptyStateView extends StatelessWidget {
  const EmptyStateView({
    super.key,
    required this.icon,
    required this.title,
    required this.message,
    this.semantic = AppSemantic.brand,
  });

  final IconData icon;
  final String title;
  final String message;
  final AppSemantic semantic;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconBox(icon: icon, size: IconBoxSize.lg, semantic: semantic),
            const SizedBox(height: 16),
            Text(title, style: context.appTextStyles.h3),
            const SizedBox(height: 6),
            Text(
              message,
              textAlign: TextAlign.center,
              style: context.appTextStyles.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

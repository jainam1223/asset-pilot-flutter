import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../buttons/app_text_link.dart';
import '../indicators/icon_box.dart';
import '../widget_enums.dart';

/// Centered icon + title + message + retry-link placeholder for a failed
/// fetch. Domain-blind — callers supply their own copy and retry callback.
class ErrorStateView extends StatelessWidget {
  const ErrorStateView({
    super.key,
    required this.title,
    required this.message,
    this.onRetry,
    this.icon = Icons.error_outline,
  });

  final String title;
  final String message;
  final VoidCallback? onRetry;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconBox(icon: icon, size: IconBoxSize.lg, semantic: AppSemantic.danger),
            const SizedBox(height: 16),
            Text(title, style: context.appTextStyles.h3),
            const SizedBox(height: 6),
            Text(
              message,
              textAlign: TextAlign.center,
              style: context.appTextStyles.bodyMedium,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 16),
              AppTextLink(label: context.l10n.retry, onPressed: onRetry),
            ],
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';

/// Plain text link button (e.g. "Forgot password?", "View all →").
class AppTextLink extends StatelessWidget {
  const AppTextLink({
    super.key,
    required this.label,
    required this.onPressed,
    this.trailingIcon,
    this.color,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? trailingIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final effectiveColor = color ?? context.appColors.primary;
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: context.appTextStyles.labelMedium.copyWith(
                color: effectiveColor,
              ),
            ),
            if (trailingIcon != null) ...[
              const SizedBox(width: 4),
              Icon(trailingIcon, size: 14, color: effectiveColor),
            ],
          ],
        ),
      ),
    );
  }
}

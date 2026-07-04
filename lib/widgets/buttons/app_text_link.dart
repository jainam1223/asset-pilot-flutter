import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';

/// Plain text link button (e.g. "Forgot password?", "View all →").
class AppTextLink extends StatelessWidget {
  const AppTextLink({
    super.key,
    required this.label,
    required this.onPressed,
    this.trailingIcon,
    this.color = AppColors.primary,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? trailingIcon;
  final Color color;

  @override
  Widget build(BuildContext context) {
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
              style: TextStyle(
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: color,
              ),
            ),
            if (trailingIcon != null) ...[
              const SizedBox(width: 4),
              Icon(trailingIcon, size: 14, color: color),
            ],
          ],
        ),
      ),
    );
  }
}

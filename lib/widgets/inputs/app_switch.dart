import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';

/// Toggle switch (e.g. "Work from home"), styled to the app's primary color.
class AppSwitch extends StatelessWidget {
  const AppSwitch({super.key, required this.value, required this.onChanged, this.label});

  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final toggle = Switch.adaptive(
      value: value,
      onChanged: onChanged,
      activeThumbColor: Colors.white,
      activeTrackColor: AppColors.primary,
      inactiveTrackColor: AppColors.border,
      inactiveThumbColor: Colors.white,
    );

    if (label == null) return toggle;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label!,
          style: const TextStyle(
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(width: 8),
        toggle,
      ],
    );
  }
}

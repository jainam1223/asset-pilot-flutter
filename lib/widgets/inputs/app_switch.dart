import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';

/// Toggle switch (e.g. "Work from home"), styled to the app's primary color.
class AppSwitch extends StatelessWidget {
  const AppSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final toggle = Switch.adaptive(
      value: value,
      onChanged: onChanged,
      activeThumbColor: Colors.white,
      activeTrackColor: context.appColors.primary,
      inactiveTrackColor: context.appColors.border,
      inactiveThumbColor: Colors.white,
    );

    if (label == null) return toggle;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label!,
          style: context.appTextStyles.labelLarge.copyWith(
            color: context.appColors.textPrimary,
          ),
        ),
        const SizedBox(width: 8),
        toggle,
      ],
    );
  }
}

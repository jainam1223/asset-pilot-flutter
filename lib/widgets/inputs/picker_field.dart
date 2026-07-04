import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';

/// Read-only field that opens a date picker / dropdown / selector on tap
/// (trailing chevron or calendar icon, per [trailingIcon]).
class PickerField extends StatelessWidget {
  const PickerField({
    super.key,
    required this.label,
    required this.valueText,
    required this.onTap,
    this.trailingIcon = Icons.keyboard_arrow_down,
    this.enabled = true,
  });

  final String label;
  final String valueText;
  final VoidCallback onTap;
  final IconData trailingIcon;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled ? onTap : null,
      borderRadius: BorderRadius.circular(11),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        decoration: BoxDecoration(
          color: context.appColors.surface,
          border: Border.all(color: context.appColors.border, width: 1.4),
          borderRadius: BorderRadius.circular(11),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    label,
                    style: context.appTextStyles.emphasisSmall.copyWith(
                      color: context.appColors.textTertiary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    valueText,
                    style: context.appTextStyles.labelXLarge.copyWith(
                      color: context.appColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Icon(trailingIcon, size: 18, color: context.appColors.textTertiary),
            ),
          ],
        ),
      ),
    );
  }
}

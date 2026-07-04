import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';

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
          color: AppColors.surface,
          border: Border.all(color: AppColors.border, width: 1.4),
          borderRadius: BorderRadius.circular(11),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: AppColors.textTertiary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    valueText,
                    style: const TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
            Icon(trailingIcon, size: 18, color: AppColors.textTertiary),
          ],
        ),
      ),
    );
  }
}

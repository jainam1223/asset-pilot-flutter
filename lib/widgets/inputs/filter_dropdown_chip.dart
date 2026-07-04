import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';

/// Compact filter-dropdown chip for table toolbars, e.g. "Priority: All ▾".
class FilterDropdownChip extends StatelessWidget {
  const FilterDropdownChip({
    super.key,
    required this.label,
    required this.valueLabel,
    required this.onTap,
  });

  final String label;
  final String valueLabel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(9),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 9),
        decoration: BoxDecoration(
          color: AppColors.surface,
          border: Border.all(color: AppColors.borderSubtle),
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$label: $valueLabel',
              style: const TextStyle(
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(width: 7),
            const Icon(Icons.keyboard_arrow_down, size: 13, color: AppColors.textHint),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';

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
          color: context.appColors.surface,
          border: Border.all(color: context.appColors.borderSubtle),
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$label: $valueLabel',
              style: context.appTextStyles.emphasisMedium.copyWith(
                color: context.appColors.textSecondary,
              ),
            ),
            const SizedBox(width: 7),
            Icon(
              Icons.keyboard_arrow_down,
              size: 13,
              color: context.appColors.textHint,
            ),
          ],
        ),
      ),
    );
  }
}

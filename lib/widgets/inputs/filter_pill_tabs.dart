import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';

class PillTab {
  const PillTab({required this.id, required this.label, this.count});

  final String id;
  final String label;

  /// Optional trailing count, e.g. "All · 312".
  final int? count;
}

/// Horizontally scrollable filter-pill row (e.g. "All / Pending / Assigned /
/// Completed", optionally with counts like "Pending RM · 12").
class FilterPillTabs extends StatelessWidget {
  const FilterPillTabs({
    super.key,
    required this.tabs,
    required this.selectedId,
    required this.onChanged,
  });

  final List<PillTab> tabs;
  final String selectedId;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final tab in tabs) ...[
            if (tab != tabs.first) const SizedBox(width: 8),
            _Pill(tab: tab, selected: tab.id == selectedId, onTap: () => onChanged(tab.id)),
          ],
        ],
      ),
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill({required this.tab, required this.selected, required this.onTap});

  final PillTab tab;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final label = tab.count != null ? '${tab.label} · ${tab.count}' : tab.label;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary : AppColors.surface,
          border: selected ? null : Border.all(color: AppColors.borderSubtle),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: selected ? Colors.white : AppColors.textSecondary,
          ),
        ),
      ),
    );
  }
}

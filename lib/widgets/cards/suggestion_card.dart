import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';
import '../buttons/pill_action_button.dart';

/// Ranked AI-suggestion card (numbered badge + title/subtitle + select
/// button). [recommended] swaps the border/background treatment for the
/// top pick so it stands out from the rest of the list.
class SuggestionCard extends StatelessWidget {
  const SuggestionCard({
    super.key,
    required this.rank,
    required this.title,
    required this.subtitle,
    required this.onSelect,
    this.recommended = false,
  });

  final int rank;
  final String title;
  final String subtitle;
  final VoidCallback onSelect;
  final bool recommended;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: recommended ? AppColors.surfaceMuted : AppColors.surface,
        border: Border.all(
          color: recommended ? AppColors.primary : AppColors.borderSubtle,
          width: recommended ? 1.5 : 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: recommended ? AppColors.primary : AppColors.surfaceMuted,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Text(
              '$rank',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: recommended ? Colors.white : AppColors.primary,
              ),
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    height: 1.4,
                    color: recommended ? AppColors.primary : AppColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          PillActionButton(label: 'Select', onPressed: onSelect),
        ],
      ),
    );
  }
}

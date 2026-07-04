import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
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
    required this.selectLabel,
    required this.onSelect,
    this.recommended = false,
  });

  final int rank;
  final String title;
  final String subtitle;

  /// Caller-supplied label for the select button (e.g. `context.l10n.x`) —
  /// this widget stays domain-blind and l10n-agnostic per the shared
  /// widget library convention.
  final String selectLabel;
  final VoidCallback onSelect;
  final bool recommended;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: recommended
            ? context.appColors.surfaceMuted
            : context.appColors.surface,
        border: Border.all(
          color: recommended
              ? context.appColors.primary
              : context.appColors.borderSubtle,
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
              color: recommended
                  ? context.appColors.primary
                  : context.appColors.surfaceMuted,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Text(
              '$rank',
              style: TextStyle(
                fontFamily: context.appTextStyles.headingFamily,
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: recommended ? Colors.white : context.appColors.primary,
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
                  style: context.appTextStyles.labelMedium.copyWith(
                    color: context.appColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: context.appTextStyles.bodySmall.copyWith(
                    height: 1.4,
                    color: recommended
                        ? context.appColors.primary
                        : context.appColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          PillActionButton(label: selectLabel, onPressed: onSelect),
        ],
      ),
    );
  }
}

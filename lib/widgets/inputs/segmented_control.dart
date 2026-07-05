import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../../values/app_theme/app_colors.dart';
import '../widget_enums.dart';

class SegmentOption<T> {
  const SegmentOption({
    required this.value,
    required this.label,
    this.selectedSemantic = AppSemantic.brand,
  });

  final T value;
  final String label;

  /// Color shown when this specific option is selected — lets a 3-up
  /// priority selector highlight High in danger-red while Medium/Low use
  /// the neutral/brand tone, without the control itself knowing about
  /// priority semantics.
  final AppSemantic selectedSemantic;
}

/// Fixed-width segmented control — covers both the 2-option case
/// ("As Borrower" / "As Owner") and the 3-option case (Low/Medium/High
/// priority selector). Two vs three options is just list length; splitting
/// them into separate widgets would buy nothing.
class SegmentedControl<T> extends StatelessWidget {
  const SegmentedControl({
    super.key,
    required this.options,
    required this.value,
    required this.onChanged,
    this.onDark = false,
  });

  final List<SegmentOption<T>> options;
  final T value;
  final ValueChanged<T> onChanged;

  /// Set `true` when placed directly on a solid/gradient brand-colored
  /// background (e.g. a purple tab bar) rather than [surfaceMuted] — swaps
  /// the track to transparent and the selected pill to a white/primary
  /// pairing so it stays legible against the dark backdrop.
  final bool onDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: onDark ? Colors.transparent : context.appColors.surfaceMuted,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          for (final option in options)
            Expanded(
              child: _Segment(
                option: option,
                selected: option.value == value,
                onChanged: onChanged,
                onDark: onDark,
              ),
            ),
        ],
      ),
    );
  }
}

class _Segment<T> extends StatelessWidget {
  const _Segment({
    required this.option,
    required this.selected,
    required this.onChanged,
    required this.onDark,
  });

  final SegmentOption<T> option;
  final bool selected;
  final ValueChanged<T> onChanged;
  final bool onDark;

  @override
  Widget build(BuildContext context) {
    final selectedBg = onDark ? Colors.white : option.selectedSemantic.colors(context).fg;
    final selectedFg = onDark ? AppColors.primary : Colors.white;
    final unselectedFg = onDark
        ? AppColors.textOnDarkMuted
        : context.appColors.textTertiary;
    return InkWell(
      onTap: () => onChanged(option.value),
      borderRadius: BorderRadius.circular(9),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: selected ? selectedBg : Colors.transparent,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Text(
          option.label,
          style: context.appTextStyles.labelMedium.copyWith(
            color: selected ? selectedFg : unselectedFg,
          ),
        ),
      ),
    );
  }
}

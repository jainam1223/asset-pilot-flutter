import 'package:flutter/material.dart';

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
  });

  final List<SegmentOption<T>> options;
  final T value;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (final option in options) ...[
          if (option != options.first) const SizedBox(width: 8),
          Expanded(child: _Segment(option: option, selected: option.value == value, onChanged: onChanged)),
        ],
      ],
    );
  }
}

class _Segment<T> extends StatelessWidget {
  const _Segment({required this.option, required this.selected, required this.onChanged});

  final SegmentOption<T> option;
  final bool selected;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    final colors = option.selectedSemantic.colors;
    return InkWell(
      onTap: () => onChanged(option.value),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 11),
        decoration: BoxDecoration(
          color: selected ? colors.bg : AppColors.surface,
          border: Border.all(color: selected ? colors.fg : AppColors.borderSubtle, width: 1.4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          option.label,
          style: TextStyle(
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: selected ? colors.fg : AppColors.textTertiary,
          ),
        ),
      ),
    );
  }
}

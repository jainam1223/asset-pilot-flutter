import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../widget_enums.dart';

/// Label + value row above a thin rounded bar filled proportionally in a
/// semantic color (used for the dashboard's device-status breakdown).
class AppProgressBar extends StatelessWidget {
  const AppProgressBar({
    super.key,
    required this.label,
    required this.value,
    required this.valueLabel,
    this.semantic = AppSemantic.brand,
  });

  final String label;

  /// 0.0–1.0 fill fraction.
  final double value;

  /// Text shown trailing the label (e.g. the raw count "611").
  final String valueLabel;

  final AppSemantic semantic;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: context.appTextStyles.emphasisMedium.copyWith(
                color: context.appColors.textPrimary,
              ),
            ),
            Text(
              valueLabel,
              style: context.appTextStyles.label.copyWith(
                color: context.appColors.textPrimary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: value.clamp(0.0, 1.0),
            minHeight: 7,
            backgroundColor: context.appColors.surfaceMuted,
            valueColor: AlwaysStoppedAnimation(semantic.fg(context)),
          ),
        ),
      ],
    );
  }
}

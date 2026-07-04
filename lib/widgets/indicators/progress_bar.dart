import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';
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
              style: const TextStyle(
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppColors.textPrimary,
              ),
            ),
            Text(
              valueLabel,
              style: const TextStyle(
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: AppColors.textPrimary,
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
            backgroundColor: AppColors.surfaceMuted,
            valueColor: AlwaysStoppedAnimation(semantic.fg),
          ),
        ),
      ],
    );
  }
}

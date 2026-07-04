import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';
import 'app_card.dart';

class InfoRow {
  const InfoRow({required this.label, required this.value});

  final String label;

  /// Arbitrary trailing content — plain text, a [StatusPill], a colored
  /// link, etc.
  final Widget value;
}

/// Label/value rows separated by hairline dividers, no leading icon — used
/// for "Assigned from / Assigned to / Setup / Ship tracking" style panels.
class InfoRowsCard extends StatelessWidget {
  const InfoRowsCard({super.key, required this.rows});

  final List<InfoRow> rows;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          for (final row in rows)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                border: row == rows.last
                    ? null
                    : const Border(bottom: BorderSide(color: AppColors.divider)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    row.label,
                    style: const TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: AppColors.textTertiary,
                    ),
                  ),
                  row.value,
                ],
              ),
            ),
        ],
      ),
    );
  }
}

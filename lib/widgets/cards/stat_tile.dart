import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';
import '../widget_enums.dart';
import 'app_card.dart';

/// KPI tile: label + large number, used in the dashboard's row of stats.
/// Fixed internal scale — responsiveness (tiles-per-row) belongs to
/// [StatTileRow], not the tile itself.
class StatTile extends StatelessWidget {
  const StatTile({super.key, required this.label, required this.value, this.semantic});

  final String label;
  final String value;

  /// Tints the value text; null keeps the default text-primary color.
  final AppSemantic? semantic;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
              fontSize: 11,
              color: AppColors.textTertiary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 26,
              height: 1,
              color: semantic?.fg ?? AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

/// Lays out N [StatTile]s, wrapping to a new row when the available width
/// can't fit [minTileWidth] per tile — this is the responsive piece; the
/// tile itself never consults [Responsive].
class StatTileRow extends StatelessWidget {
  const StatTileRow({super.key, required this.tiles, this.minTileWidth = 140, this.spacing = 14});

  final List<StatTile> tiles;
  final double minTileWidth;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final perRow = (constraints.maxWidth / minTileWidth).floor().clamp(1, tiles.length);
        final tileWidth = (constraints.maxWidth - spacing * (perRow - 1)) / perRow;
        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: [
            for (final tile in tiles) SizedBox(width: tileWidth, child: tile),
          ],
        );
      },
    );
  }
}

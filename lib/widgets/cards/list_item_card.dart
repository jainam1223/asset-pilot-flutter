import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';
import '../indicators/icon_box.dart';
import 'app_card.dart';

class MetaEntry {
  const MetaEntry({required this.icon, required this.label});

  final IconData icon;
  final String label;
}

/// Device-list-item pattern: leading icon box, title/subtitle, an optional
/// trailing badge (e.g. [StatusPill]), and a meta row with a small icon.
class ListItemCard extends StatelessWidget {
  const ListItemCard({
    super.key,
    required this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.meta,
    this.onTap,
  });

  final IconBox leading;
  final String title;
  final String? subtitle;

  /// Typically a [StatusPill].
  final Widget? trailing;

  final MetaEntry? meta;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          leading,
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          height: 1.2,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    if (trailing != null) ...[const SizedBox(width: 8), trailing!],
                  ],
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 6),
                  Text(
                    subtitle!,
                    style: const TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.textTertiary,
                    ),
                  ),
                ],
                if (meta != null) ...[
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(meta!.icon, size: 14, color: AppColors.textHint),
                      const SizedBox(width: 6),
                      Text(
                        meta!.label,
                        style: const TextStyle(
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';
import '../indicators/app_avatar.dart';
import 'app_card.dart';

/// Avatar-header + status badge + meta line + optional note + optional
/// action-button row (approval/handover request cards).
class RequestCard extends StatelessWidget {
  const RequestCard({
    super.key,
    required this.avatarName,
    required this.title,
    this.statusBadge,
    this.metaLine,
    this.note,
    this.actions,
    this.onTap,
  });

  final String avatarName;
  final String title;

  /// Typically a [StatusPill] or [PriorityTag].
  final Widget? statusBadge;
  final String? metaLine;
  final String? note;
  final List<Widget>? actions;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  AppAvatar(name: avatarName, size: AppAvatarSize.sm),
                  const SizedBox(width: 11),
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ?statusBadge,
            ],
          ),
          if (metaLine != null) ...[
            const SizedBox(height: 11),
            Text(
              metaLine!,
              style: const TextStyle(
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppColors.textTertiary,
              ),
            ),
          ],
          if (note != null) ...[
            const SizedBox(height: 8),
            Text(
              note!,
              style: const TextStyle(
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                height: 1.5,
                color: AppColors.textSecondary,
              ),
            ),
          ],
          if (actions != null) ...[
            const SizedBox(height: 12),
            Row(
              children: [
                for (var i = 0; i < actions!.length; i++) ...[
                  if (i > 0) const SizedBox(width: 10),
                  Expanded(child: actions![i]),
                ],
              ],
            ),
          ],
        ],
      ),
    );
  }
}

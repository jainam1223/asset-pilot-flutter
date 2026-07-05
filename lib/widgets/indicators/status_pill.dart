import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../widget_enums.dart';

/// Rounded-full status indicator: a colored dot + label on a tinted
/// background (e.g. "Assigned", "Pending IT", "Rejected").
///
/// Domain-blind by design — callers map their own status enum to
/// [AppSemantic] via a small extension in their own module rather than this
/// widget importing `statuses.dart`.
///
/// Visually distinct from [PriorityTag] (rounded-rect, no dot) so the two
/// are never confused when they appear in the same table row.
class StatusPill extends StatelessWidget {
  const  StatusPill({
    super.key,
    required this.semantic,
    required this.label,
    this.dense = false,
  });

  final AppSemantic semantic;
  final String label;

  /// Tighter padding/text for table cells; default is form/card sizing.
  final bool dense;

  @override
  Widget build(BuildContext context) {
    final colors = semantic.colors(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: dense ? 7 : 9,
        vertical: dense ? 4 : 5,
      ),
      decoration: BoxDecoration(
        color: colors.bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(color: colors.fg, shape: BoxShape.circle),
          ),
          SizedBox(width: dense ? 5 : 6),
          Text(
            label,
            style: context.appTextStyles.labelSmall.copyWith(
              fontSize: dense ? 9 : 10,
              color: colors.fg,
            ),
          ),
        ],
      ),
    );
  }
}

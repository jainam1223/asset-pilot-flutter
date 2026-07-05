import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../widget_enums.dart';

/// Small rounded-rectangle tag for priority levels (High/Medium/Low).
///
/// Deliberately a different shape from [StatusPill] (rect, no dot) so the
/// two remain visually distinguishable when they appear side by side in the
/// same table row. Domain-blind — callers map `RequestPriority` to
/// [AppSemantic] themselves.
class PriorityTag extends StatelessWidget {
  const PriorityTag({super.key, required this.semantic, required this.label});

  final AppSemantic semantic;
  final String label;

  @override
  Widget build(BuildContext context) {
    final colors = semantic.colors(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: colors.bg,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        label,
        style: context.appTextStyles.labelSmall.copyWith(
          fontSize: 11,
          color: colors.fg,
        ),
      ),
    );
  }
}

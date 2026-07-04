import 'package:flutter/material.dart';

/// Column definition for [AppDataTable]. The table never knows the row's
/// domain type beyond the generic `<T>` — [cellBuilder] is the only place
/// domain content (status pills, avatars, action buttons) is produced.
class TableColumn<T> {
  const TableColumn({
    required this.header,
    required this.cellBuilder,
    this.width,
    this.flex = 1,
    this.alignment = Alignment.centerLeft,
  });

  final String header;
  final Widget Function(BuildContext context, T row) cellBuilder;

  /// Fixed width in logical pixels. If null, [flex] is used instead.
  final double? width;
  final int flex;
  final Alignment alignment;
}

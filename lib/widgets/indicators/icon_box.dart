import 'package:flutter/material.dart';

import '../widget_enums.dart';

/// Two sizes catalogued in the mockup: 46px (list/card leading decoration)
/// and 58px (detail-header leading decoration). Explicit, not responsive —
/// the size is a per-card-type design choice.
enum IconBoxSize { md, lg }

extension _IconBoxDims on IconBoxSize {
  double get box => switch (this) {
        IconBoxSize.md => 46,
        IconBoxSize.lg => 58,
      };

  double get radius => switch (this) {
        IconBoxSize.md => 12,
        IconBoxSize.lg => 16,
      };

  double get iconSize => switch (this) {
        IconBoxSize.md => 24,
        IconBoxSize.lg => 30,
      };
}

/// Tinted rounded box containing a category icon — the leading decoration
/// used on device cards and detail headers (e.g. purple for laptop, amber
/// for monitor, red-tint for accessory).
class IconBox extends StatelessWidget {
  const IconBox({
    super.key,
    required this.icon,
    this.semantic = AppSemantic.brand,
    this.size = IconBoxSize.md,
  });

  final IconData icon;
  final AppSemantic semantic;
  final IconBoxSize size;

  @override
  Widget build(BuildContext context) {
    final colors = semantic.colors;
    return Container(
      width: size.box,
      height: size.box,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colors.bg,
        borderRadius: BorderRadius.circular(size.radius),
      ),
      child: Icon(icon, size: size.iconSize, color: colors.fg),
    );
  }
}

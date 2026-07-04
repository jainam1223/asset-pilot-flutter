import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';

/// Fixed sizes catalogued across the mockup: table-cell (xs) up to profile
/// header (lg). Explicit enum, not [Responsive]-derived — the size is a
/// per-context design choice, not a viewport fact.
enum AppAvatarSize { xs, sm, md, lg }

extension _AvatarDiameter on AppAvatarSize {
  double get diameter => switch (this) {
        AppAvatarSize.xs => 26,
        AppAvatarSize.sm => 32,
        AppAvatarSize.md => 40,
        AppAvatarSize.lg => 72,
      };

  double get fontSize => switch (this) {
        AppAvatarSize.xs => 10,
        AppAvatarSize.sm => 11,
        AppAvatarSize.md => 13,
        AppAvatarSize.lg => 26,
      };
}

/// Initials circle avatar. If [backgroundColor]/[foregroundColor] aren't
/// supplied, a tint is derived deterministically from [name] so the same
/// person always renders with the same color without callers tracking it.
class AppAvatar extends StatelessWidget {
  const AppAvatar({
    super.key,
    required this.name,
    this.size = AppAvatarSize.md,
    this.backgroundColor,
    this.foregroundColor,
  });

  final String name;
  final AppAvatarSize size;
  final Color? backgroundColor;
  final Color? foregroundColor;

  static const List<(Color bg, Color fg)> _tints = [
    (AppColors.surfaceMuted, AppColors.primary),
    (AppColors.infoBg, AppColors.infoFg),
    (AppColors.successBg, AppColors.successFg),
    (AppColors.warningBg, AppColors.warningFg),
    (AppColors.neutralBg, AppColors.neutralFg),
  ];

  String get _initials {
    final parts = name.trim().split(RegExp(r'\s+')).where((p) => p.isNotEmpty).toList();
    if (parts.isEmpty) return '';
    if (parts.length == 1) return parts.first.substring(0, 1).toUpperCase();
    return (parts.first.substring(0, 1) + parts.last.substring(0, 1)).toUpperCase();
  }

  (Color bg, Color fg) get _tint {
    if (backgroundColor != null || foregroundColor != null) {
      return (backgroundColor ?? AppColors.surfaceMuted, foregroundColor ?? AppColors.primary);
    }
    final index = name.hashCode.abs() % _tints.length;
    return _tints[index];
  }

  @override
  Widget build(BuildContext context) {
    final diameter = size.diameter;
    final (bg, fg) = _tint;
    return Container(
      width: diameter,
      height: diameter,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: bg, shape: BoxShape.circle),
      child: Text(
        _initials,
        style: TextStyle(
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
          fontSize: size.fontSize,
          color: fg,
        ),
      ),
    );
  }
}

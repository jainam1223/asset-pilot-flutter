import 'package:flutter/material.dart';

/// Shared navigation data model consumed by both [AppBottomNav] (mobile) and
/// [AppSideNav] (admin).
///
/// The two nav widgets render this identically-shaped data in structurally
/// different layouts (horizontal tab bar vs vertical sidebar rail) — the
/// model is what stays consistent across variants, not the widget.
@immutable
class NavItem {
  const NavItem({
    required this.id,
    required this.label,
    required this.icon,
    this.selectedIcon,
    this.badgeCount,
  });

  /// Stable identifier (typically a route key) used to determine selection.
  final String id;

  final String label;
  final IconData icon;

  /// Icon shown when this item is selected; falls back to [icon] if null.
  final IconData? selectedIcon;

  /// Optional count badge (e.g. "Pending RM · 12").
  final int? badgeCount;
}

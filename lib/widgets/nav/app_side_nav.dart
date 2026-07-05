import 'package:flutter/material.dart';

import '../../generated/assets.gen.dart';
import '../../utilities/extensions/context_extensions.dart';
import '../../values/constants/app_constants.dart';
import 'nav_item.dart';

/// Admin's fixed-width dark sidebar rail. Collapses to icon-only on narrow
/// widths (caller decides via [expanded], typically driven by
/// `Responsive.isDesktop(context)`). Structurally incompatible with
/// [AppBottomNav] — unified only via the shared [NavItem] data model.
class AppSideNav extends StatelessWidget {
  const AppSideNav({
    super.key,
    required this.items,
    required this.selectedId,
    required this.onSelected,
    required this.brandLabel,
    this.expanded = true,
    this.footer,
  });

  final List<NavItem> items;

  /// Id of the highlighted item, or `null` if none should appear selected.
  final String? selectedId;
  final ValueChanged<String> onSelected;

  /// Full brand label shown when [expanded]; collapses to its initials.
  final String brandLabel;
  final bool expanded;

  /// Optional widget pinned to the bottom of the rail, below the nav items
  /// (e.g. a launcher button). Domain-blind: the caller supplies content, the
  /// rail only positions it.
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: expanded ? AppConstants.adminNavWidth : 72,
      color: context.appColors.primaryDeep,
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 22),
            child: expanded
                ? Assets.images.adminLogo.image(height: 32, fit: BoxFit.contain)
                : Text(
                    brandLabel.substring(0, 1),
                    style: context.appTextStyles.h3.copyWith(
                      color: Colors.white,
                      letterSpacing: 1.4,
                    ),
                  ),
          ),
          for (final item in items)
            _SideNavItem(
              item: item,
              expanded: expanded,
              selected: item.id == selectedId,
              onTap: () => onSelected(item.id),
            ),
          if (footer != null) ...[const Spacer(), footer!],
        ],
      ),
    );
  }
}

class _SideNavItem extends StatelessWidget {
  const _SideNavItem({
    required this.item,
    required this.expanded,
    required this.selected,
    required this.onTap,
  });

  final NavItem item;
  final bool expanded;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? Colors.white : context.appColors.primaryAccent;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 13),
        decoration: BoxDecoration(
          color: selected ? Colors.white.withValues(alpha: 0.13) : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              selected ? (item.selectedIcon ?? item.icon) : item.icon,
              size: 19,
              color: color,
            ),
            if (expanded) ...[
              const SizedBox(width: 11),
              Expanded(
                child: Text(
                  item.label,
                  style: context.appTextStyles.bodyLarge.copyWith(
                    fontSize: 13,
                    color: color,
                  ),
                ),
              ),
              if (item.badgeCount != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: context.appColors.errorAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '${item.badgeCount}',
                    style: context.appTextStyles.overline.copyWith(
                      color: Colors.white,
                      letterSpacing: 0,
                    ),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }
}

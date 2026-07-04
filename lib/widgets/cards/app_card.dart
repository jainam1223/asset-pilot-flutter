import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../../values/constants/app_constants.dart';

/// Base white rounded-16 soft-shadow container. Every other card in the
/// library composes this rather than reimplementing elevation/radius.
class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(15),
    this.onTap,
    this.selected = false,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(AppConstants.cardRadius);
    final content = Padding(padding: padding, child: child);

    return Container(
      decoration: BoxDecoration(
        color: selected
            ? context.appColors.surfaceMuted
            : context.appColors.surface,
        borderRadius: radius,
        border: selected
            ? Border.all(color: context.appColors.primary, width: 1.5)
            : null,
        boxShadow: selected
            ? null
            : [
                BoxShadow(
                  color: context.appColors.primaryDeep.withValues(alpha: 0.06),
                  blurRadius: 18,
                  offset: const Offset(0, 6),
                ),
              ],
      ),
      clipBehavior: Clip.antiAlias,
      child: onTap == null
          ? content
          : Material(
              color: Colors.transparent,
              child: InkWell(onTap: onTap, child: content),
            ),
    );
  }
}

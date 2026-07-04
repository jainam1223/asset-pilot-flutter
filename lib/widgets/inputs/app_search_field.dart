import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../../utilities/helpers/responsive.dart';

/// One search field for all three catalogued contexts (mobile full-width,
/// admin top-bar ~240px, admin toolbar ~280px). The three contexts aren't
/// cleanly breakpoint-separable (both admin cases are "desktop"), so [width]
/// is an explicit escape hatch rather than a size enum; when omitted, a
/// sensible default is derived from [Responsive].
class AppSearchField extends StatelessWidget {
  const AppSearchField({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.width,
  });

  final TextEditingController? controller;
  final String? hintText;
  final ValueChanged<String>? onChanged;

  /// Explicit width override. Null => full-width on mobile, 240 on desktop.
  final double? width;

  @override
  Widget build(BuildContext context) {
    final resolvedWidth =
        width ?? (Responsive.isMobile(context) ? double.infinity : 240);

    final field = Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 13),
      decoration: BoxDecoration(
        color: context.appColors.scaffoldAlt,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        children: [
          Icon(Icons.search, size: 16, color: context.appColors.textHint),
          const SizedBox(width: 9),
          Expanded(
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              style: context.appTextStyles.bodyMedium.copyWith(
                color: context.appColors.textPrimary,
                height: 1,
              ),
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: context.appTextStyles.bodyMedium.copyWith(
                  color: context.appColors.textHint,
                  height: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return resolvedWidth.isFinite
        ? SizedBox(width: resolvedWidth, child: field)
        : field;
  }
}

import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../../values/app_theme/app_colors.dart';

/// Brand purple gradient header — a greeting + title stack with a
/// trailing action slot (e.g. a notification bell). Includes the top
/// safe-area inset, so it's meant to sit directly under the status bar
/// (mockup E02) rather than inside a [Scaffold.appBar].
class GradientHeader extends StatelessWidget {
  const GradientHeader({
    super.key,
    required this.greeting,
    required this.title,
    this.trailing,
    this.contentHeight = 110,
    this.includeTopInset = true,
  });

  final String greeting;
  final String title;
  final Widget? trailing;

  /// Header content height, excluding the top safe-area inset. Omit to
  /// size to content (the mockup's default).
  final double? contentHeight;

  /// Whether to pad for the top safe-area inset. Set `false` when this
  /// header isn't the topmost widget under the status bar (e.g. a tab bar
  /// already claims that inset above it).
  final bool includeTopInset;

  @override
  Widget build(BuildContext context) {
    final topInset = includeTopInset ? MediaQuery.paddingOf(context).top : 0.0;
    return Container(
      width: double.infinity,
      height: contentHeight == null ? null : topInset + contentHeight!,
      padding: EdgeInsets.fromLTRB(20, topInset + 12, 20, 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.5, -0.87),
          end: Alignment(0.5, 0.87),
          colors: [AppColors.primary, AppColors.primaryDark],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  greeting,
                  style: context.appTextStyles.bodyLarge.copyWith(
                    color: AppColors.textOnDarkMuted,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: context.appTextStyles.h1.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          ?trailing,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import 'app_button.dart';

enum AppIconButtonShape { circle, square }

/// Icon-only button. Kept separate from [AppButton] — an icon-only control
/// with a required `label` param would be an API smell.
class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.variant = AppButtonVariant.secondary,
    this.shape = AppIconButtonShape.circle,
    this.size = 40,
    this.tooltip,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final AppIconButtonShape shape;
  final double size;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final disabled = onPressed == null;
    final (bg, fg, border) = switch (variant) {
      AppButtonVariant.primary => (
        context.appColors.primary,
        Colors.white,
        null,
      ),
      AppButtonVariant.secondary => (
        context.appColors.surface,
        disabled ? context.appColors.textHint : context.appColors.textSecondary,
        context.appColors.border,
      ),
      AppButtonVariant.destructive => (
        context.appColors.surface,
        context.appColors.errorFg,
        context.appColors.errorFg,
      ),
      AppButtonVariant.success => (
        context.appColors.successFg,
        Colors.white,
        null,
      ),
    };

    final button = Material(
      color: bg,
      shape: shape == AppIconButtonShape.circle
          ? CircleBorder(
              side: border != null
                  ? BorderSide(color: border)
                  : BorderSide.none,
            )
          : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: border != null
                  ? BorderSide(color: border)
                  : BorderSide.none,
            ),
      child: InkWell(
        onTap: onPressed,
        customBorder: shape == AppIconButtonShape.circle
            ? const CircleBorder()
            : RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          width: size,
          height: size,
          child: Icon(icon, size: size * 0.48, color: fg),
        ),
      ),
    );

    return tooltip != null ? Tooltip(message: tooltip, child: button) : button;
  }
}

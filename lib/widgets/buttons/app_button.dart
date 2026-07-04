import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';

enum AppButtonVariant { primary, secondary, destructive, success }

/// Explicit size — a small pill-action button and a large form-submit
/// button can coexist on the same screen/width, so size is a call-site
/// choice, not derived from [Responsive].
enum AppButtonSize { small, medium, large }

extension _ButtonMetrics on AppButtonSize {
  double get verticalPadding => switch (this) {
        AppButtonSize.small => 9,
        AppButtonSize.medium => 13,
        AppButtonSize.large => 16,
      };

  double get horizontalPadding => switch (this) {
        AppButtonSize.small => 13,
        AppButtonSize.medium => 16,
        AppButtonSize.large => 18,
      };

  double get fontSize => switch (this) {
        AppButtonSize.small => 11,
        AppButtonSize.medium => 13,
        AppButtonSize.large => 15,
      };

  double get radius => switch (this) {
        AppButtonSize.small => 8,
        AppButtonSize.medium => 11,
        AppButtonSize.large => 13,
      };

  double get spinnerSize => switch (this) {
        AppButtonSize.small => 14,
        AppButtonSize.medium => 18,
        AppButtonSize.large => 20,
      };
}

/// The one button widget for every filled/outlined use case in the app:
/// primary CTA, secondary/outline, destructive (reject/cancel), success
/// (approve), and the small pill-shaped buttons embedded in table rows
/// (via `size: AppButtonSize.small`).
///
/// Absorbs the loading-spinner-swap pattern that was previously hand-rolled
/// per screen (see the original `login_screen.dart`).
class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.size = AppButtonSize.large,
    this.leadingIcon,
    this.trailingIcon,
    this.isLoading = false,
    this.expand = false,
  });

  final String label;

  /// Null disables the button (also disabled while [isLoading]).
  final VoidCallback? onPressed;

  final AppButtonVariant variant;
  final AppButtonSize size;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final bool isLoading;

  /// Fills available width (form submit / pinned CTA).
  final bool expand;

  bool get _disabled => onPressed == null || isLoading;

  @override
  Widget build(BuildContext context) {
    final child = _buildChild();
    final button = switch (variant) {
      AppButtonVariant.primary => _GradientButton(
          onPressed: _disabled ? null : onPressed,
          size: size,
          child: child,
        ),
      AppButtonVariant.secondary => OutlinedButton(
          onPressed: _disabled ? null : onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.textSecondary,
            side: const BorderSide(color: AppColors.border, width: 1.5),
            padding: EdgeInsets.symmetric(
              horizontal: size.horizontalPadding,
              vertical: size.verticalPadding,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size.radius)),
          ),
          child: child,
        ),
      AppButtonVariant.destructive => OutlinedButton(
          onPressed: _disabled ? null : onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.errorFg,
            side: const BorderSide(color: AppColors.errorFg, width: 1.5),
            padding: EdgeInsets.symmetric(
              horizontal: size.horizontalPadding,
              vertical: size.verticalPadding,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size.radius)),
          ),
          child: child,
        ),
      AppButtonVariant.success => ElevatedButton(
          onPressed: _disabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.successFg,
            foregroundColor: Colors.white,
            elevation: 0,
            padding: EdgeInsets.symmetric(
              horizontal: size.horizontalPadding,
              vertical: size.verticalPadding,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(size.radius)),
          ),
          child: child,
        ),
    };

    return expand ? SizedBox(width: double.infinity, child: button) : button;
  }

  Widget _buildChild() {
    if (isLoading) {
      final color = variant == AppButtonVariant.secondary || variant == AppButtonVariant.destructive
          ? (variant == AppButtonVariant.destructive ? AppColors.errorFg : AppColors.textSecondary)
          : Colors.white;
      return SizedBox(
        height: size.spinnerSize,
        width: size.spinnerSize,
        child: CircularProgressIndicator(strokeWidth: 2, color: color),
      );
    }

    final textStyle = TextStyle(
      fontFamily: 'DM Sans',
      fontWeight: FontWeight.w600,
      fontSize: size.fontSize,
      height: 1,
    );

    if (leadingIcon == null && trailingIcon == null) {
      return Text(label, style: textStyle);
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (leadingIcon != null) ...[
          Icon(leadingIcon, size: size.fontSize + 3),
          const SizedBox(width: 8),
        ],
        Text(label, style: textStyle),
        if (trailingIcon != null) ...[
          const SizedBox(width: 8),
          Icon(trailingIcon, size: size.fontSize + 3),
        ],
      ],
    );
  }
}

/// Primary variant needs a gradient fill, which [ElevatedButton.styleFrom]
/// can't express directly — wrapped in a [DecoratedBox] instead.
class _GradientButton extends StatelessWidget {
  const _GradientButton({required this.onPressed, required this.size, required this.child});

  final VoidCallback? onPressed;
  final AppButtonSize size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final disabled = onPressed == null;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size.radius),
        gradient: disabled
            ? null
            : const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.gradientStart, AppColors.gradientEnd],
              ),
        color: disabled ? AppColors.border : null,
        boxShadow: disabled
            ? null
            : [
                BoxShadow(
                  color: AppColors.primaryDark.withValues(alpha: 0.35),
                  blurRadius: 24,
                  offset: const Offset(0, 12),
                ),
              ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(size.radius),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.horizontalPadding,
              vertical: size.verticalPadding,
            ),
            child: Center(
              child: DefaultTextStyle.merge(
                style: const TextStyle(color: Colors.white),
                child: IconTheme.merge(
                  data: const IconThemeData(color: Colors.white),
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

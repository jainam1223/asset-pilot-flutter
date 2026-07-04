import 'package:flutter/material.dart';

import 'app_text_styles.dart';

/// [ThemeData] extension carrying every [AppTextStyles] token, so widgets
/// read text styles via `Theme.of(context).extension<AppTextStylesExtension>()!`
/// (or the `context.appTextStyles` shortcut) instead of the static
/// [AppTextStyles] class directly. Values mirror [AppTextStyles] one-to-one;
/// [AppTheme.light] is the single place that constructs the live instance.
@immutable
class AppTextStylesExtension extends ThemeExtension<AppTextStylesExtension> {
  const AppTextStylesExtension({
    required this.headingFamily,
    required this.bodyFamily,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.bodyXSmall,
    required this.emphasisSmall,
    required this.emphasisMedium,
    required this.emphasisLarge,
    required this.labelSmall,
    required this.label,
    required this.labelMedium,
    required this.labelLarge,
    required this.labelXLarge,
    required this.overline,
    required this.button,
  });

  static const AppTextStylesExtension light = AppTextStylesExtension(
    headingFamily: AppTextStyles.headingFamily,
    bodyFamily: AppTextStyles.bodyFamily,
    h1: AppTextStyles.h1,
    h2: AppTextStyles.h2,
    h3: AppTextStyles.h3,
    bodyLarge: AppTextStyles.bodyLarge,
    bodyMedium: AppTextStyles.bodyMedium,
    bodySmall: AppTextStyles.bodySmall,
    bodyXSmall: AppTextStyles.bodyXSmall,
    emphasisSmall: AppTextStyles.emphasisSmall,
    emphasisMedium: AppTextStyles.emphasisMedium,
    emphasisLarge: AppTextStyles.emphasisLarge,
    labelSmall: AppTextStyles.labelSmall,
    label: AppTextStyles.label,
    labelMedium: AppTextStyles.labelMedium,
    labelLarge: AppTextStyles.labelLarge,
    labelXLarge: AppTextStyles.labelXLarge,
    overline: AppTextStyles.overline,
    button: AppTextStyles.button,
  );

  /// Font family for headings/emphasis (Poppins).
  final String headingFamily;

  /// Font family for body text (DM Sans).
  final String bodyFamily;

  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle bodyXSmall;
  final TextStyle emphasisSmall;
  final TextStyle emphasisMedium;
  final TextStyle emphasisLarge;
  final TextStyle labelSmall;
  final TextStyle label;
  final TextStyle labelMedium;
  final TextStyle labelLarge;
  final TextStyle labelXLarge;
  final TextStyle overline;
  final TextStyle button;

  @override
  AppTextStylesExtension copyWith({
    String? headingFamily,
    String? bodyFamily,
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? bodyXSmall,
    TextStyle? emphasisSmall,
    TextStyle? emphasisMedium,
    TextStyle? emphasisLarge,
    TextStyle? labelSmall,
    TextStyle? label,
    TextStyle? labelMedium,
    TextStyle? labelLarge,
    TextStyle? labelXLarge,
    TextStyle? overline,
    TextStyle? button,
  }) {
    return AppTextStylesExtension(
      headingFamily: headingFamily ?? this.headingFamily,
      bodyFamily: bodyFamily ?? this.bodyFamily,
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      bodyXSmall: bodyXSmall ?? this.bodyXSmall,
      emphasisSmall: emphasisSmall ?? this.emphasisSmall,
      emphasisMedium: emphasisMedium ?? this.emphasisMedium,
      emphasisLarge: emphasisLarge ?? this.emphasisLarge,
      labelSmall: labelSmall ?? this.labelSmall,
      label: label ?? this.label,
      labelMedium: labelMedium ?? this.labelMedium,
      labelLarge: labelLarge ?? this.labelLarge,
      labelXLarge: labelXLarge ?? this.labelXLarge,
      overline: overline ?? this.overline,
      button: button ?? this.button,
    );
  }

  @override
  AppTextStylesExtension lerp(
    ThemeExtension<AppTextStylesExtension>? other,
    double t,
  ) {
    if (other is! AppTextStylesExtension) return this;
    return AppTextStylesExtension(
      headingFamily: t < 0.5 ? headingFamily : other.headingFamily,
      bodyFamily: t < 0.5 ? bodyFamily : other.bodyFamily,
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      h3: TextStyle.lerp(h3, other.h3, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      bodyXSmall: TextStyle.lerp(bodyXSmall, other.bodyXSmall, t)!,
      emphasisSmall: TextStyle.lerp(emphasisSmall, other.emphasisSmall, t)!,
      emphasisMedium: TextStyle.lerp(emphasisMedium, other.emphasisMedium, t)!,
      emphasisLarge: TextStyle.lerp(emphasisLarge, other.emphasisLarge, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
      labelXLarge: TextStyle.lerp(labelXLarge, other.labelXLarge, t)!,
      overline: TextStyle.lerp(overline, other.overline, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
    );
  }
}

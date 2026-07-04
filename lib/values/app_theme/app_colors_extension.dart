import 'package:flutter/material.dart';

import 'app_colors.dart';

/// [ThemeData] extension carrying every [AppColors] token, so widgets read
/// colors via `Theme.of(context).extension<AppColorsExtension>()!` (or the
/// `context.appColors` shortcut) instead of the static [AppColors] class
/// directly. Values mirror [AppColors] one-to-one; [AppTheme.light] is the
/// single place that constructs the live instance.
@immutable
class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  const AppColorsExtension({
    required this.primary,
    required this.primaryDark,
    required this.primaryDeep,
    required this.primaryAccent,
    required this.gradientStart,
    required this.gradientEnd,
    required this.scaffoldLight,
    required this.scaffoldAlt,
    required this.adminCanvas,
    required this.surface,
    required this.surfaceMuted,
    required this.deviceDark,
    required this.border,
    required this.borderSubtle,
    required this.divider,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textHint,
    required this.textOnDarkMuted,
    required this.successFg,
    required this.successBg,
    required this.warningFg,
    required this.warningBg,
    required this.errorFg,
    required this.errorBg,
    required this.errorAccent,
    required this.infoFg,
    required this.infoBg,
    required this.neutralFg,
    required this.neutralBg,
  });

  static const AppColorsExtension light = AppColorsExtension(
    primary: AppColors.primary,
    primaryDark: AppColors.primaryDark,
    primaryDeep: AppColors.primaryDeep,
    primaryAccent: AppColors.primaryAccent,
    gradientStart: AppColors.gradientStart,
    gradientEnd: AppColors.gradientEnd,
    scaffoldLight: AppColors.scaffoldLight,
    scaffoldAlt: AppColors.scaffoldAlt,
    adminCanvas: AppColors.adminCanvas,
    surface: AppColors.surface,
    surfaceMuted: AppColors.surfaceMuted,
    deviceDark: AppColors.deviceDark,
    border: AppColors.border,
    borderSubtle: AppColors.borderSubtle,
    divider: AppColors.divider,
    textPrimary: AppColors.textPrimary,
    textSecondary: AppColors.textSecondary,
    textTertiary: AppColors.textTertiary,
    textHint: AppColors.textHint,
    textOnDarkMuted: AppColors.textOnDarkMuted,
    successFg: AppColors.successFg,
    successBg: AppColors.successBg,
    warningFg: AppColors.warningFg,
    warningBg: AppColors.warningBg,
    errorFg: AppColors.errorFg,
    errorBg: AppColors.errorBg,
    errorAccent: AppColors.errorAccent,
    infoFg: AppColors.infoFg,
    infoBg: AppColors.infoBg,
    neutralFg: AppColors.neutralFg,
    neutralBg: AppColors.neutralBg,
  );

  final Color primary;
  final Color primaryDark;
  final Color primaryDeep;
  final Color primaryAccent;
  final Color gradientStart;
  final Color gradientEnd;
  final Color scaffoldLight;
  final Color scaffoldAlt;
  final Color adminCanvas;
  final Color surface;
  final Color surfaceMuted;
  final Color deviceDark;
  final Color border;
  final Color borderSubtle;
  final Color divider;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textHint;
  final Color textOnDarkMuted;
  final Color successFg;
  final Color successBg;
  final Color warningFg;
  final Color warningBg;
  final Color errorFg;
  final Color errorBg;
  final Color errorAccent;
  final Color infoFg;
  final Color infoBg;
  final Color neutralFg;
  final Color neutralBg;

  @override
  AppColorsExtension copyWith({
    Color? primary,
    Color? primaryDark,
    Color? primaryDeep,
    Color? primaryAccent,
    Color? gradientStart,
    Color? gradientEnd,
    Color? scaffoldLight,
    Color? scaffoldAlt,
    Color? adminCanvas,
    Color? surface,
    Color? surfaceMuted,
    Color? deviceDark,
    Color? border,
    Color? borderSubtle,
    Color? divider,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? textHint,
    Color? textOnDarkMuted,
    Color? successFg,
    Color? successBg,
    Color? warningFg,
    Color? warningBg,
    Color? errorFg,
    Color? errorBg,
    Color? errorAccent,
    Color? infoFg,
    Color? infoBg,
    Color? neutralFg,
    Color? neutralBg,
  }) {
    return AppColorsExtension(
      primary: primary ?? this.primary,
      primaryDark: primaryDark ?? this.primaryDark,
      primaryDeep: primaryDeep ?? this.primaryDeep,
      primaryAccent: primaryAccent ?? this.primaryAccent,
      gradientStart: gradientStart ?? this.gradientStart,
      gradientEnd: gradientEnd ?? this.gradientEnd,
      scaffoldLight: scaffoldLight ?? this.scaffoldLight,
      scaffoldAlt: scaffoldAlt ?? this.scaffoldAlt,
      adminCanvas: adminCanvas ?? this.adminCanvas,
      surface: surface ?? this.surface,
      surfaceMuted: surfaceMuted ?? this.surfaceMuted,
      deviceDark: deviceDark ?? this.deviceDark,
      border: border ?? this.border,
      borderSubtle: borderSubtle ?? this.borderSubtle,
      divider: divider ?? this.divider,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      textHint: textHint ?? this.textHint,
      textOnDarkMuted: textOnDarkMuted ?? this.textOnDarkMuted,
      successFg: successFg ?? this.successFg,
      successBg: successBg ?? this.successBg,
      warningFg: warningFg ?? this.warningFg,
      warningBg: warningBg ?? this.warningBg,
      errorFg: errorFg ?? this.errorFg,
      errorBg: errorBg ?? this.errorBg,
      errorAccent: errorAccent ?? this.errorAccent,
      infoFg: infoFg ?? this.infoFg,
      infoBg: infoBg ?? this.infoBg,
      neutralFg: neutralFg ?? this.neutralFg,
      neutralBg: neutralBg ?? this.neutralBg,
    );
  }

  @override
  AppColorsExtension lerp(ThemeExtension<AppColorsExtension>? other, double t) {
    if (other is! AppColorsExtension) return this;
    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryDark: Color.lerp(primaryDark, other.primaryDark, t)!,
      primaryDeep: Color.lerp(primaryDeep, other.primaryDeep, t)!,
      primaryAccent: Color.lerp(primaryAccent, other.primaryAccent, t)!,
      gradientStart: Color.lerp(gradientStart, other.gradientStart, t)!,
      gradientEnd: Color.lerp(gradientEnd, other.gradientEnd, t)!,
      scaffoldLight: Color.lerp(scaffoldLight, other.scaffoldLight, t)!,
      scaffoldAlt: Color.lerp(scaffoldAlt, other.scaffoldAlt, t)!,
      adminCanvas: Color.lerp(adminCanvas, other.adminCanvas, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceMuted: Color.lerp(surfaceMuted, other.surfaceMuted, t)!,
      deviceDark: Color.lerp(deviceDark, other.deviceDark, t)!,
      border: Color.lerp(border, other.border, t)!,
      borderSubtle: Color.lerp(borderSubtle, other.borderSubtle, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      textHint: Color.lerp(textHint, other.textHint, t)!,
      textOnDarkMuted: Color.lerp(textOnDarkMuted, other.textOnDarkMuted, t)!,
      successFg: Color.lerp(successFg, other.successFg, t)!,
      successBg: Color.lerp(successBg, other.successBg, t)!,
      warningFg: Color.lerp(warningFg, other.warningFg, t)!,
      warningBg: Color.lerp(warningBg, other.warningBg, t)!,
      errorFg: Color.lerp(errorFg, other.errorFg, t)!,
      errorBg: Color.lerp(errorBg, other.errorBg, t)!,
      errorAccent: Color.lerp(errorAccent, other.errorAccent, t)!,
      infoFg: Color.lerp(infoFg, other.infoFg, t)!,
      infoBg: Color.lerp(infoBg, other.infoBg, t)!,
      neutralFg: Color.lerp(neutralFg, other.neutralFg, t)!,
      neutralBg: Color.lerp(neutralBg, other.neutralBg, t)!,
    );
  }
}

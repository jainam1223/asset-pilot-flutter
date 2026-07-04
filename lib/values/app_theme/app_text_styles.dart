import 'package:flutter/material.dart';

import 'app_colors.dart';

/// Typography tokens: Poppins for headings/emphasis, DM Sans for body.
///
/// Font files are added under assets/fonts during UI implementation; the
/// families are declared in pubspec.yaml so these styles resolve.
abstract final class AppTextStyles {
  static const String headingFamily = 'Poppins';
  static const String bodyFamily = 'DM Sans';

  // Headings (Poppins)
  static const TextStyle h1 = TextStyle(
    fontFamily: headingFamily,
    fontWeight: FontWeight.w700,
    fontSize: 26,
    height: 1.1,
    color: AppColors.textPrimary,
  );

  static const TextStyle h2 = TextStyle(
    fontFamily: headingFamily,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    height: 1.2,
    color: AppColors.textPrimary,
  );

  static const TextStyle h3 = TextStyle(
    fontFamily: headingFamily,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: AppColors.textPrimary,
  );

  // Body (DM Sans)
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    height: 1.5,
    color: AppColors.textSecondary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: AppColors.textTertiary,
  );

  /// 400/12 — between [bodySmall] and [bodyMedium]; list-item subtitles.
  static const TextStyle bodyXSmall = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColors.textTertiary,
  );

  // Emphasis (DM Sans, 500 weight — between body and label)
  static const TextStyle emphasisSmall = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w500,
    fontSize: 11,
    color: AppColors.textTertiary,
  );

  static const TextStyle emphasisMedium = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  static const TextStyle emphasisLarge = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: AppColors.textPrimary,
  );

  // Labels (DM Sans, 600 weight)
  static const TextStyle labelSmall = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w600,
    fontSize: 10,
    height: 1,
    color: AppColors.textSecondary,
  );

  static const TextStyle label = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w600,
    fontSize: 13,
    color: AppColors.textPrimary,
  );

  static const TextStyle labelLarge = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.textPrimary,
  );

  static const TextStyle labelXLarge = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w600,
    fontSize: 15,
    height: 1.2,
    color: AppColors.textPrimary,
  );

  /// 700/10, letterSpacing 0.4 — uppercase table headers, nav badge counts.
  static const TextStyle overline = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w700,
    fontSize: 10,
    letterSpacing: 0.4,
    color: AppColors.textTertiary,
  );

  static const TextStyle button = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: Colors.white,
  );
}

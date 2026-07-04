import 'package:flutter/material.dart';

import '../values/app_theme/app_colors.dart';

/// Shared semantic color vocabulary consumed by [StatusPill], [InlineAlert],
/// [ToastKind]-based toasts, and [AppProgressBar].
///
/// Domain enums (`RequestStatus`, `DeviceStatus`, ...) never appear in
/// `lib/widgets/` — each module maps its own status enums onto this instead,
/// keeping the shared widget library domain-blind.
enum AppSemantic { success, warning, danger, info, brand, neutral }

/// (foreground, background) color pair for a given [AppSemantic].
typedef SemanticColors = ({Color fg, Color bg});

extension AppSemanticColors on AppSemantic {
  SemanticColors get colors => switch (this) {
        AppSemantic.success => (fg: AppColors.successFg, bg: AppColors.successBg),
        AppSemantic.warning => (fg: AppColors.warningFg, bg: AppColors.warningBg),
        AppSemantic.danger => (fg: AppColors.errorFg, bg: AppColors.errorBg),
        AppSemantic.info => (fg: AppColors.infoFg, bg: AppColors.infoBg),
        AppSemantic.brand => (fg: AppColors.primary, bg: AppColors.surfaceMuted),
        AppSemantic.neutral => (fg: AppColors.neutralFg, bg: AppColors.neutralBg),
      };

  Color get fg => colors.fg;

  Color get bg => colors.bg;

  /// Default icon for contexts that don't supply their own (e.g. [InlineAlert]).
  IconData get icon => switch (this) {
        AppSemantic.success => Icons.check_circle_outline,
        AppSemantic.warning => Icons.warning_amber_rounded,
        AppSemantic.danger => Icons.error_outline,
        AppSemantic.info => Icons.info_outline,
        AppSemantic.brand => Icons.info_outline,
        AppSemantic.neutral => Icons.circle_outlined,
      };
}

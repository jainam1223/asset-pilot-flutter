import 'package:flutter/material.dart';

import '../utilities/extensions/context_extensions.dart';

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
  SemanticColors colors(BuildContext context) {
    final tokens = context.appColors;
    return switch (this) {
      AppSemantic.success => (fg: tokens.successFg, bg: tokens.successBg),
      AppSemantic.warning => (fg: tokens.warningFg, bg: tokens.warningBg),
      AppSemantic.danger => (fg: tokens.errorFg, bg: tokens.errorBg),
      AppSemantic.info => (fg: tokens.infoFg, bg: tokens.infoBg),
      AppSemantic.brand => (fg: tokens.primary, bg: tokens.surfaceMuted),
      AppSemantic.neutral => (fg: tokens.neutralFg, bg: tokens.neutralBg),
    };
  }

  Color fg(BuildContext context) => colors(context).fg;

  Color bg(BuildContext context) => colors(context).bg;

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

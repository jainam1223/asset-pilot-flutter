import 'package:flutter/material.dart';

import '../../generated/l10n/app_localizations.dart';
import '../../values/app_theme/app_colors_extension.dart';
import '../../values/app_theme/app_text_styles_extension.dart';

/// Terse access to common per-[BuildContext] objects.
extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colors => Theme.of(this).colorScheme;

  /// Design-system color tokens (see [AppColorsExtension]).
  AppColorsExtension get appColors =>
      Theme.of(this).extension<AppColorsExtension>()!;

  /// Design-system text-style tokens (see [AppTextStylesExtension]).
  AppTextStylesExtension get appTextStyles =>
      Theme.of(this).extension<AppTextStylesExtension>()!;

  /// Localized strings.
  AppLocalizations get l10n => AppLocalizations.of(this);

  Size get screenSize => MediaQuery.sizeOf(this);
}

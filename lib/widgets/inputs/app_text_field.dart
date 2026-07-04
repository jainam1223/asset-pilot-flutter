import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';

/// Outlined text field with a floating label. Default/focused border colors
/// come from the app's `inputDecorationTheme` (see `app_theme.dart`) — this
/// widget only adds what the theme doesn't already express: error state,
/// leading icon, and multiline sizing.
class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
    this.controller,
    this.hintText,
    this.leadingIcon,
    this.obscureText = false,
    this.keyboardType,
    this.errorText,
    this.minLines,
    this.maxLines = 1,
    this.readOnly = false,
    this.enabled = true,
    this.onTap,
    this.onChanged,
    this.suffixIcon,
  });

  final String label;
  final TextEditingController? controller;
  final String? hintText;
  final IconData? leadingIcon;
  final bool obscureText;
  final TextInputType? keyboardType;

  /// Non-null switches the field into its error visual state.
  final String? errorText;

  final int? minLines;
  final int maxLines;
  final bool readOnly;
  final bool enabled;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final Widget? suffixIcon;

  /// Multiline/note field — same floating-label styling, taller body.
  const AppTextField.multiline({
    super.key,
    required this.label,
    this.controller,
    this.hintText,
    this.minLines = 3,
    this.maxLines = 6,
    this.errorText,
    this.enabled = true,
    this.onChanged,
  }) : leadingIcon = null,
       obscureText = false,
       keyboardType = TextInputType.multiline,
       readOnly = false,
       onTap = null,
       suffixIcon = null;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      minLines: minLines,
      maxLines: obscureText ? 1 : maxLines,
      readOnly: readOnly,
      enabled: enabled,
      onTap: onTap,
      onChanged: onChanged,
      style: context.appTextStyles.bodyLarge.copyWith(
        color: context.appColors.textPrimary,
      ),
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        errorText: errorText,
        prefixIcon: leadingIcon != null ? Icon(leadingIcon, size: 18) : null,
        suffixIcon: suffixIcon,
      ),
    );
  }
}

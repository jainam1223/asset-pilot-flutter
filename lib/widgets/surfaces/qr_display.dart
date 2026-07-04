import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../buttons/app_button.dart';

/// QR code block: image + label + monospace token. [large] switches between
/// the compact inline form (device detail) and the standalone panel with a
/// print button (QR management preview).
class QrDisplay extends StatelessWidget {
  const QrDisplay({
    super.key,
    required this.qrImage,
    required this.token,
    required this.tokenLabel,
    this.title,
    this.subtitle,
    this.large = false,
    this.onPrint,
    this.printLabel,
  });

  final Widget qrImage;
  final String token;

  /// Caller-supplied label above the token (e.g. localized "Token").
  final String tokenLabel;

  final String? title;
  final String? subtitle;
  final bool large;
  final VoidCallback? onPrint;

  /// Required (non-null) whenever [onPrint] is supplied — caller-provided
  /// so this widget doesn't hardcode English UI text.
  final String? printLabel;

  @override
  Widget build(BuildContext context) {
    if (!large) {
      return Row(
        children: [
          SizedBox(width: 88, height: 88, child: qrImage),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (title != null)
                  Text(
                    title!,
                    style: context.appTextStyles.labelMedium.copyWith(
                      color: context.appColors.textPrimary,
                    ),
                  ),
                const SizedBox(height: 6),
                Text(
                  tokenLabel,
                  style: context.appTextStyles.bodySmall.copyWith(
                    color: context.appColors.textTertiary,
                  ),
                ),
                Text(
                  token,
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                    color: context.appColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: 150, height: 150, child: qrImage),
        const SizedBox(height: 14),
        if (title != null)
          Text(
            title!,
            textAlign: TextAlign.center,
            style: context.appTextStyles.labelMedium.copyWith(
              color: context.appColors.textPrimary,
            ),
          ),
        if (subtitle != null) ...[
          const SizedBox(height: 6),
          Text(
            subtitle!,
            textAlign: TextAlign.center,
            style: context.appTextStyles.emphasisSmall.copyWith(
              color: context.appColors.textTertiary,
            ),
          ),
        ],
        const SizedBox(height: 8),
        Text(
          token,
          style: TextStyle(
            fontFamily: 'monospace',
            fontWeight: FontWeight.w600,
            fontSize: 11,
            color: context.appColors.primary,
          ),
        ),
        if (onPrint != null) ...[
          const SizedBox(height: 16),
          AppButton(
            label: printLabel!,
            onPressed: onPrint,
            variant: AppButtonVariant.secondary,
            expand: true,
          ),
        ],
      ],
    );
  }
}

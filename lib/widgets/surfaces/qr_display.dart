import 'package:flutter/material.dart';

import '../../values/app_theme/app_colors.dart';
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
                    style: const TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: AppColors.textPrimary,
                    ),
                  ),
                const SizedBox(height: 6),
                Text(
                  tokenLabel,
                  style: const TextStyle(
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: AppColors.textTertiary,
                  ),
                ),
                Text(
                  token,
                  style: const TextStyle(
                    fontFamily: 'monospace',
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                    color: AppColors.primary,
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
            style: const TextStyle(
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: AppColors.textPrimary,
            ),
          ),
        if (subtitle != null) ...[
          const SizedBox(height: 6),
          Text(
            subtitle!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w500,
              fontSize: 11,
              color: AppColors.textTertiary,
            ),
          ),
        ],
        const SizedBox(height: 8),
        Text(
          token,
          style: const TextStyle(
            fontFamily: 'monospace',
            fontWeight: FontWeight.w600,
            fontSize: 11,
            color: AppColors.primary,
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

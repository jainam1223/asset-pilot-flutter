import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../widget_enums.dart';

/// Non-floating, tinted contextual message box (info/warning/success/danger)
/// used inline on forms and admin screens — distinct from [AppToast], which
/// is transient/floating.
class InlineAlert extends StatelessWidget {
  const InlineAlert({
    super.key,
    required this.semantic,
    this.message,
    this.messageWidget,
    this.icon,
    this.dense = false,
  }) : assert(
         message != null || messageWidget != null,
         'Provide either message or messageWidget',
       );

  final AppSemantic semantic;

  /// Plain text message.
  final String? message;

  /// Custom body, e.g. a [RichText] with bold inline emphasis. Takes
  /// precedence over [message] when both are supplied.
  final Widget? messageWidget;

  final IconData? icon;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    final colors = semantic.colors(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: dense ? 13 : 16,
        vertical: dense ? 10 : 12,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Icon(
              icon ?? semantic.icon,
              size: dense ? 16 : 18,
              color: colors.fg,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child:
                messageWidget ??
                Text(
                  message!,
                  style: context.appTextStyles.emphasisSmall.copyWith(
                    fontSize: dense ? 11 : 12,
                    height: 1.4,
                    color: colors.fg,
                  ),
                ),
          ),
        ],
      ),
    );
  }
}

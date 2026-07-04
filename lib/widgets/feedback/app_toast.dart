import 'dart:async';

import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../widget_enums.dart';

enum ToastKind { success, error, info, warning }

extension _ToastKindSemantic on ToastKind {
  AppSemantic get semantic => switch (this) {
    ToastKind.success => AppSemantic.success,
    ToastKind.error => AppSemantic.danger,
    ToastKind.info => AppSemantic.info,
    ToastKind.warning => AppSemantic.warning,
  };
}

/// Presentation strategy for [AppToast]. Two implementations exist below;
/// each app entry point (`main_mobile.dart` / `main_admin.dart`) registers
/// the one appropriate for its chrome via [AppToast.configure].
abstract interface class ToastPresenter {
  void show(
    BuildContext context, {
    required String message,
    required ToastKind kind,
    String? actionLabel,
    VoidCallback? onAction,
  });
}

/// Unified call-site API — feature code calls this identically regardless
/// of variant; the underlying presentation (bottom SnackBar vs top-right
/// overlay stack) is decided once at app boot via [configure], not per call.
abstract final class AppToast {
  static ToastPresenter _presenter = SnackBarToastPresenter();

  /// Call once at app entry (`main_mobile.dart` / `main_admin.dart`).
  /// Defaults to [SnackBarToastPresenter] if never configured, so nothing
  /// crashes in tests or an unconfigured shell.
  static void configure(ToastPresenter presenter) => _presenter = presenter;

  static void success(
    BuildContext context,
    String message, {
    String? actionLabel,
    VoidCallback? onAction,
  }) => _presenter.show(
    context,
    message: message,
    kind: ToastKind.success,
    actionLabel: actionLabel,
    onAction: onAction,
  );

  static void error(
    BuildContext context,
    String message, {
    String? actionLabel,
    VoidCallback? onAction,
  }) => _presenter.show(
    context,
    message: message,
    kind: ToastKind.error,
    actionLabel: actionLabel,
    onAction: onAction,
  );

  static void info(
    BuildContext context,
    String message, {
    String? actionLabel,
    VoidCallback? onAction,
  }) => _presenter.show(
    context,
    message: message,
    kind: ToastKind.info,
    actionLabel: actionLabel,
    onAction: onAction,
  );

  static void warning(
    BuildContext context,
    String message, {
    String? actionLabel,
    VoidCallback? onAction,
  }) => _presenter.show(
    context,
    message: message,
    kind: ToastKind.warning,
    actionLabel: actionLabel,
    onAction: onAction,
  );
}

/// Bottom-anchored [SnackBar] — idiomatic on mobile. Register in
/// `main_mobile.dart`.
class SnackBarToastPresenter implements ToastPresenter {
  @override
  void show(
    BuildContext context, {
    required String message,
    required ToastKind kind,
    String? actionLabel,
    VoidCallback? onAction,
  }) {
    final colors = kind.semantic.colors(context);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: colors.bg,
          content: Row(
            children: [
              Icon(kind.semantic.icon, size: 18, color: colors.fg),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  message,
                  style: context.appTextStyles.emphasisLarge.copyWith(
                    color: colors.fg,
                  ),
                ),
              ),
            ],
          ),
          action: actionLabel != null && onAction != null
              ? SnackBarAction(
                  label: actionLabel,
                  textColor: colors.fg,
                  onPressed: onAction,
                )
              : null,
        ),
      );
  }
}

/// Top-right stacked toast — idiomatic for the admin web/desktop shell
/// (fixed sidebar + top bar make a bottom SnackBar easy to miss). Register
/// in `main_admin.dart`. Requires a root [Overlay] in the widget tree
/// (provided by [MaterialApp]).
class OverlayToastPresenter implements ToastPresenter {
  final List<OverlayEntry> _entries = [];

  @override
  void show(
    BuildContext context, {
    required String message,
    required ToastKind kind,
    String? actionLabel,
    VoidCallback? onAction,
  }) {
    final overlay = Overlay.of(context, rootOverlay: true);
    late final OverlayEntry entry;
    entry = OverlayEntry(
      builder: (context) => _ToastStack(
        index: _entries.length,
        message: message,
        kind: kind,
        actionLabel: actionLabel,
        onAction: onAction,
        onDismiss: () {
          entry.remove();
          _entries.remove(entry);
        },
      ),
    );
    _entries.add(entry);
    overlay.insert(entry);
  }
}

class _ToastStack extends StatefulWidget {
  const _ToastStack({
    required this.index,
    required this.message,
    required this.kind,
    required this.onDismiss,
    this.actionLabel,
    this.onAction,
  });

  final int index;
  final String message;
  final ToastKind kind;
  final String? actionLabel;
  final VoidCallback? onAction;
  final VoidCallback onDismiss;

  @override
  State<_ToastStack> createState() => _ToastStackState();
}

class _ToastStackState extends State<_ToastStack> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 4), widget.onDismiss);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = widget.kind.semantic.colors(context);
    return Positioned(
      top: 20 + (widget.index * 64),
      right: 20,
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: 340,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
          decoration: BoxDecoration(
            color: context.appColors.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: colors.fg.withValues(alpha: 0.35)),
            boxShadow: [
              BoxShadow(
                color: context.appColors.primaryDeep.withValues(alpha: 0.18),
                blurRadius: 24,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(widget.kind.semantic.icon, size: 18, color: colors.fg),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  widget.message,
                  style: context.appTextStyles.emphasisLarge.copyWith(
                    color: context.appColors.textPrimary,
                  ),
                ),
              ),
              if (widget.actionLabel != null && widget.onAction != null)
                TextButton(
                  onPressed: () {
                    widget.onAction!();
                    widget.onDismiss();
                  },
                  child: Text(widget.actionLabel!),
                ),
              InkWell(
                onTap: widget.onDismiss,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Icon(
                    Icons.close,
                    size: 16,
                    color: context.appColors.textHint,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

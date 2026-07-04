import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../../utilities/network/network_state.dart';
import '../buttons/app_text_link.dart';

/// Renders a [NetworkState] identically across screens: a centered spinner
/// while [Loading], an error message with optional retry while [Error], the
/// caller's [emptyBuilder] when [Success] data is empty, and [onData]
/// otherwise. [Idle] renders nothing by default (override via [onIdle]).
class NetworkStateView<T> extends StatelessWidget {
  const NetworkStateView({
    super.key,
    required this.state,
    required this.onData,
    this.onRetry,
    this.emptyBuilder,
    this.isEmpty,
    this.onIdle,
  });

  final NetworkState<T> state;
  final Widget Function(BuildContext context, T data) onData;
  final VoidCallback? onRetry;
  final WidgetBuilder? emptyBuilder;

  /// Predicate deciding whether [Success] data counts as "empty" (e.g. an
  /// empty list). Defaults to always false when omitted.
  final bool Function(T data)? isEmpty;

  final WidgetBuilder? onIdle;

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      Idle<T>() => onIdle?.call(context) ?? const SizedBox.shrink(),
      Loading<T>() => const Center(child: CircularProgressIndicator()),
      Error<T>(:final message) => _ErrorView(
        message: message,
        onRetry: onRetry,
      ),
      Success<T>(:final data) =>
        (isEmpty?.call(data) ?? false)
            ? (emptyBuilder?.call(context) ?? const SizedBox.shrink())
            : onData(context, data),
    };
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, this.onRetry});

  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 32,
              color: context.appColors.errorFg,
            ),
            const SizedBox(height: 10),
            Text(
              message,
              textAlign: TextAlign.center,
              style: context.appTextStyles.emphasisLarge.copyWith(
                color: context.appColors.textSecondary,
              ),
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 10),
              AppTextLink(label: context.l10n.retry, onPressed: onRetry),
            ],
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';
import '../../utilities/network/network_state.dart';
import 'error_state_view.dart';

/// Renders a [NetworkState] identically across screens: a centered spinner
/// while [Loading], an [ErrorStateView] with optional retry while [Error],
/// the caller's [emptyBuilder] when [Success] data is empty, and [onData]
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
      Error<T>(:final message) => ErrorStateView(
        title: context.l10n.somethingWentWrong,
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

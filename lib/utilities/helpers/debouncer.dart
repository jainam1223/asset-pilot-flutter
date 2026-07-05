import 'dart:async';

import 'package:flutter/foundation.dart';

/// Coalesces rapid successive calls into a single deferred one.
///
/// Used to keep search fields from firing a network reload on every keystroke:
/// each call to [run] cancels the previous pending action and reschedules it
/// [duration] into the future, so the action only executes once typing pauses.
///
/// Owners must call [dispose] (e.g. from a Cubit's `close`) to cancel any
/// still-pending timer.
class Debouncer {
  Debouncer({this.duration = const Duration(milliseconds: 350)});

  final Duration duration;
  Timer? _timer;

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(duration, action);
  }

  /// Cancel any pending action without running it.
  void cancel() => _timer?.cancel();

  void dispose() => _timer?.cancel();
}

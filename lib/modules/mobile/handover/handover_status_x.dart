import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widget_enums.dart';

/// Maps [HandoverStatus] onto the shared, domain-blind [AppSemantic] +
/// display label vocabulary consumed by [StatusPill].
extension HandoverStatusX on HandoverStatus {
  AppSemantic get semantic => switch (this) {
    HandoverStatus.requested => AppSemantic.warning,
    HandoverStatus.accepted => AppSemantic.success,
    HandoverStatus.rejected => AppSemantic.danger,
    HandoverStatus.completed => AppSemantic.neutral,
    HandoverStatus.cancelled => AppSemantic.neutral,
  };

  String get label => switch (this) {
    HandoverStatus.requested => 'Requested',
    HandoverStatus.accepted => 'Accepted',
    HandoverStatus.rejected => 'Rejected',
    HandoverStatus.completed => 'Completed',
    HandoverStatus.cancelled => 'Cancelled',
  };
}

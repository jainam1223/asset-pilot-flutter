import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';

/// Maps [ExtensionStatus]/[MgrApprovalStatus] onto the domain-blind
/// [AppSemantic] enum, per the widget library's convention (widgets never
/// import `values/enumeration/statuses.dart`; modules own this mapping).
extension ExtensionStatusX on ExtensionStatus {
  AppSemantic get semantic => switch (this) {
        ExtensionStatus.pending => AppSemantic.warning,
        ExtensionStatus.approved => AppSemantic.success,
        ExtensionStatus.rejected => AppSemantic.danger,
      };

  String get label => switch (this) {
        ExtensionStatus.pending => 'Pending',
        ExtensionStatus.approved => 'Approved',
        ExtensionStatus.rejected => 'Rejected',
      };
}

extension MgrApprovalStatusX on MgrApprovalStatus {
  String get label => switch (this) {
        MgrApprovalStatus.notRequired => 'Not required',
        MgrApprovalStatus.pending => 'Pending',
        MgrApprovalStatus.approved => 'Approved',
        MgrApprovalStatus.rejected => 'Rejected',
      };
}

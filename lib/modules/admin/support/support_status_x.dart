import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';

/// Maps the support domain enums ([SupportType], [SupportResolution]) onto
/// labels (and [AppSemantic] where a tint is needed), per the widget
/// library's convention (widgets never import `values/enumeration`; modules
/// own this mapping).
///
/// [SupportStatus] already has its mapping in
/// `modules/admin/inventory/inventory_status_x.dart` — reuse that.
extension SupportTypeX on SupportType {
  String get label => switch (this) {
        SupportType.update => 'Install Software',
        SupportType.damage => 'Repair',
        SupportType.lost => 'Report Lost',
      };
}

extension SupportResolutionX on SupportResolution {
  String get label => switch (this) {
        SupportResolution.remoteResolved => 'Remote resolved',
        SupportResolution.repairedInPlace => 'Repaired in place',
        SupportResolution.swapped => 'Swapped',
        SupportResolution.markedLost => 'Marked lost',
      };

  /// Whether this flow swaps in a replacement unit — only [swapped] needs a
  /// swap-target device (mockup A08).
  bool get requiresSwapTarget => this == SupportResolution.swapped;

  /// Statuses the *old* device may move to once the ticket is resolved,
  /// contextual to the flow:
  /// - remote/repaired → back in service ([DeviceStatus.available]);
  /// - swapped → the replaced unit goes to repair or retirement;
  /// - marked lost → forced [DeviceStatus.lost] (not user-selectable).
  List<DeviceStatus> get oldDeviceStatusOptions => switch (this) {
        SupportResolution.remoteResolved ||
        SupportResolution.repairedInPlace =>
          const [DeviceStatus.available],
        SupportResolution.swapped => const [
            DeviceStatus.underRepair,
            DeviceStatus.retired,
          ],
        SupportResolution.markedLost => const [DeviceStatus.lost],
      };

  /// The default (and, for single-option flows, only) old-device status.
  DeviceStatus get defaultOldDeviceStatus => oldDeviceStatusOptions.first;

  /// Whether the admin actually chooses the old-device status, or it's
  /// implied by the flow (single option → not selectable).
  bool get allowsOldStatusChoice => oldDeviceStatusOptions.length > 1;
}

part of 'maintenance_list_cubit.dart';

@immutable
class MaintenanceListState extends Equatable {
  const MaintenanceListState({
    this.items = const Idle(),
    this.selectedDeviceId,
    this.newStatus,
    this.note = '',
    this.submission = const Idle(),
  });

  final NetworkState<List<MaintenanceItemResDm>> items;

  /// Id of the device currently loaded into the right "Change Status"
  /// panel, or null when no row has been selected yet.
  final String? selectedDeviceId;
  final DeviceStatus? newStatus;
  final String note;
  final NetworkState<void> submission;

  MaintenanceListState copyWith({
    NetworkState<List<MaintenanceItemResDm>>? items,
    String? selectedDeviceId,
    bool clearSelection = false,
    DeviceStatus? newStatus,
    String? note,
    NetworkState<void>? submission,
  }) {
    return MaintenanceListState(
      items: items ?? this.items,
      selectedDeviceId: clearSelection
          ? null
          : (selectedDeviceId ?? this.selectedDeviceId),
      newStatus: newStatus ?? this.newStatus,
      note: note ?? this.note,
      submission: submission ?? this.submission,
    );
  }

  @override
  List<Object?> get props => [
        items,
        selectedDeviceId,
        newStatus,
        note,
        submission,
      ];
}

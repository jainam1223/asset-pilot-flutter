part of 'client_assignment_cubit.dart';

@immutable
class ClientAssignmentState extends Equatable {
  const ClientAssignmentState({
    this.devices = const Idle(),
    this.employees = const Idle(),
    this.selectedDeviceId,
    this.selectedEmployeeId,
    this.selectedEmployeeName,
    this.assignedFrom = '',
    this.assignedTo = '',
    this.notes = '',
    this.submission = const Idle(),
  });

  final NetworkState<List<InventoryItemResDm>> devices;
  final NetworkState<List<UserResDm>> employees;
  final String? selectedDeviceId;
  final String? selectedEmployeeId;
  final String? selectedEmployeeName;
  final String assignedFrom;
  final String assignedTo;
  final String notes;
  final NetworkState<void> submission;

  ClientAssignmentState copyWith({
    NetworkState<List<InventoryItemResDm>>? devices,
    NetworkState<List<UserResDm>>? employees,
    String? selectedDeviceId,
    String? selectedEmployeeId,
    String? selectedEmployeeName,
    String? assignedFrom,
    String? assignedTo,
    String? notes,
    NetworkState<void>? submission,
  }) {
    return ClientAssignmentState(
      devices: devices ?? this.devices,
      employees: employees ?? this.employees,
      selectedDeviceId: selectedDeviceId ?? this.selectedDeviceId,
      selectedEmployeeId: selectedEmployeeId ?? this.selectedEmployeeId,
      selectedEmployeeName: selectedEmployeeName ?? this.selectedEmployeeName,
      assignedFrom: assignedFrom ?? this.assignedFrom,
      assignedTo: assignedTo ?? this.assignedTo,
      notes: notes ?? this.notes,
      submission: submission ?? this.submission,
    );
  }

  @override
  List<Object?> get props => [
        devices,
        employees,
        selectedDeviceId,
        selectedEmployeeId,
        selectedEmployeeName,
        assignedFrom,
        assignedTo,
        notes,
        submission,
      ];
}

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/assignment/assignment_repository.dart';
import '../../../../repositories/remote_repository/assignment/models/client_assignment_req_dm.dart';
import '../../../../repositories/remote_repository/common/models/user_res_dm.dart';
import '../../../../repositories/remote_repository/inventory/models/inventory_item_res_dm.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'client_assignment_state.dart';

/// Drives the Direct Client Assignment screen (mockup A07): loads
/// client-owned devices, tracks the assignment form (selected device,
/// employee, date range, notes), and submits through the mocked
/// [AssignmentRepository].
class ClientAssignmentCubit extends Cubit<ClientAssignmentState> {
  ClientAssignmentCubit() : super(const ClientAssignmentState());

  Future<void> loadDevices() async {
    safeEmit(state.copyWith(devices: const Loading()));
    try {
      final result = await AssignmentRepository.instance.fetchClientDevices();
      result.when(
        success: (data) => safeEmit(state.copyWith(devices: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(devices: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(devices: Error(errorManager.handle(e, st).message)));
    }
  }

  Future<void> loadEmployees() async {
    safeEmit(state.copyWith(employees: const Loading()));
    try {
      final result = await AssignmentRepository.instance.fetchEmployees();
      result.when(
        success: (data) => safeEmit(state.copyWith(employees: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(employees: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(employees: Error(errorManager.handle(e, st).message)));
    }
  }

  void selectDevice(String deviceId) {
    safeEmit(state.copyWith(selectedDeviceId: deviceId));
  }

  void selectEmployee(String employeeId, String employeeName) {
    safeEmit(
      state.copyWith(
        selectedEmployeeId: employeeId,
        selectedEmployeeName: employeeName,
      ),
    );
  }

  void updateAssignedFrom(DateTime value) => safeEmit(state.copyWith(assignedFrom: value));

  void updateAssignedTo(DateTime value) => safeEmit(state.copyWith(assignedTo: value));

  void updateNotes(String value) => safeEmit(state.copyWith(notes: value));

  Future<void> submit() async {
    final deviceId = state.selectedDeviceId;
    final employeeId = state.selectedEmployeeId;
    final assignedFrom = state.assignedFrom;
    final assignedTo = state.assignedTo;
    if (deviceId == null || employeeId == null || assignedFrom == null || assignedTo == null) {
      return;
    }

    safeEmit(state.copyWith(submission: const Loading()));
    try {
      final result = await AssignmentRepository.instance.assignToClient(
        ClientAssignmentReqDm(
          deviceId: deviceId,
          employeeId: employeeId,
          assignedFrom: assignedFrom,
          assignedTo: assignedTo,
          notes: state.notes.isEmpty ? null : state.notes,
        ),
      );
      result.when(
        success: (_) => safeEmit(state.copyWith(submission: const Success(null))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(submission: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(submission: Error(errorManager.handle(e, st).message)));
    }
  }
}

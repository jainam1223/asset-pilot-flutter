import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/support/models/resolve_support_req_dm.dart';
import '../../../../../repositories/remote_repository/support/models/support_summary_res_dm.dart';
import '../../../../../repositories/remote_repository/support/models/swap_target_device_res_dm.dart';
import '../../../../../repositories/remote_repository/support/support_repository.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';
import '../../../../../values/enumeration/statuses.dart';
import '../../support_status_x.dart';

part 'support_list_state.dart';

/// Page size for the client-side pagination of the Support Requests table
/// (mockup A08).
const int kSupportListPageSize = 6;

/// Drives the Support Requests & Resolve screen (mockup A08): loads the full
/// mock ticket list once, re-derives the filtered/paginated view from the
/// cache, and resolves a selected ticket via the inline right-side panel.
class SupportListCubit extends Cubit<SupportListState> {
  SupportListCubit() : super(const SupportListState());

  List<SupportSummaryResDm> _allTickets = [];

  Future<void> loadTickets() async {
    safeEmit(state.copyWith(tickets: const Loading()));
    try {
      final result = await SupportRepository.instance.fetchSupportRequests();
      result.when(
        success: (data) {
          _allTickets = data;
          safeEmit(state.copyWith(tickets: Success(_filtered())));
        },
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(tickets: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(tickets: Error(errorManager.handle(e, st).message)),
      );
    }
  }

  void setStatusFilter(String statusFilter) {
    safeEmit(state.copyWith(statusFilter: statusFilter, currentPage: 1));
    _reapplyFilters();
  }

  void setTypeFilter(SupportType? typeFilter) {
    safeEmit(
      state.copyWith(
        typeFilter: typeFilter,
        clearTypeFilter: typeFilter == null,
        currentPage: 1,
      ),
    );
    _reapplyFilters();
  }

  void setSearchQuery(String searchQuery) {
    safeEmit(state.copyWith(searchQuery: searchQuery, currentPage: 1));
    _reapplyFilters();
  }

  void setPage(int page) {
    safeEmit(state.copyWith(currentPage: page));
    _reapplyFilters();
  }

  void _reapplyFilters() {
    safeEmit(state.copyWith(tickets: Success(_filtered())));
  }

  List<SupportSummaryResDm> _filtered() {
    return _allTickets.where((t) {
      final matchesStatus =
          state.statusFilter == 'all' || t.status.name == state.statusFilter;
      final matchesType =
          state.typeFilter == null || t.type == state.typeFilter;
      final query = state.searchQuery.toLowerCase();
      final matchesSearch = query.isEmpty ||
          t.deviceName.toLowerCase().contains(query) ||
          t.id.toLowerCase().contains(query);
      return matchesStatus && matchesType && matchesSearch;
    }).toList();
  }

  /// Full filtered list (pre-pagination) — used by the screen to compute
  /// [TablePagination.totalItems] and to slice the current page.
  List<SupportSummaryResDm> get filteredTickets => _filtered();

  // --- Resolve panel -------------------------------------------------------

  void selectTicket(SupportSummaryResDm ticket) {
    const resolution = SupportResolution.remoteResolved;
    safeEmit(
      state.copyWith(
        selectedTicket: ticket,
        resolution: resolution,
        oldDeviceStatus: resolution.defaultOldDeviceStatus,
        clearSwapTarget: true,
        itNote: '',
        resolving: const Idle(),
      ),
    );
    _loadSwapTargets();
  }

  Future<void> _loadSwapTargets() async {
    safeEmit(state.copyWith(swapTargets: const Loading()));
    final result = await SupportRepository.instance.fetchSwapTargets();
    result.when(
      success: (data) => safeEmit(state.copyWith(swapTargets: Success(data))),
      failure: (error) {
        errorManager.handle(error);
        safeEmit(state.copyWith(swapTargets: Error(error.message)));
      },
    );
  }

  /// Selecting a resolution resets the old-device status to that flow's
  /// default and drops any swap target when leaving the swap flow, so the
  /// form never carries stale cross-flow state.
  void setResolution(SupportResolution resolution) {
    safeEmit(
      state.copyWith(
        resolution: resolution,
        oldDeviceStatus: resolution.defaultOldDeviceStatus,
        clearSwapTarget: !resolution.requiresSwapTarget,
      ),
    );
  }

  void setSwapTarget(SwapTargetDeviceResDm device) {
    safeEmit(state.copyWith(swapTarget: device));
  }

  void setOldDeviceStatus(DeviceStatus status) {
    safeEmit(state.copyWith(oldDeviceStatus: status));
  }

  void setItNote(String itNote) {
    safeEmit(state.copyWith(itNote: itNote));
  }

  Future<void> resolveSelected() async {
    final ticket = state.selectedTicket;
    final resolution = state.resolution;
    final oldStatus = state.oldDeviceStatus;
    if (ticket == null || resolution == null || oldStatus == null) return;
    // Swap flow requires a chosen replacement device.
    if (resolution.requiresSwapTarget && state.swapTarget == null) return;

    safeEmit(state.copyWith(resolving: const Loading()));
    try {
      final result = await SupportRepository.instance.resolveSupportRequest(
        ResolveSupportReqDm(
          supportId: ticket.id,
          resolution: resolution,
          oldDeviceNextStatus: oldStatus,
          swappedToItemId: resolution.requiresSwapTarget
              ? state.swapTarget?.id
              : null,
          itNote: state.itNote.isEmpty ? null : state.itNote,
        ),
      );
      result.when(
        success: (_) {
          safeEmit(
            state.copyWith(resolving: const Success(null), clearSelection: true),
          );
          loadTickets();
        },
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(resolving: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(resolving: Error(errorManager.handle(e, st).message)),
      );
    }
  }
}

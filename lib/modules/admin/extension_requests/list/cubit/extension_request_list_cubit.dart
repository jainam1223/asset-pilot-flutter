import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/extension_requests/extension_request_repository.dart';
import '../../../../../repositories/remote_repository/extension_requests/models/extension_request_summary_res_dm.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';
import '../../../../../values/enumeration/statuses.dart';

part 'extension_request_list_state.dart';

/// Page size for the client-side pagination of the Extension Requests
/// table (mockup A11) — the endpoint has no server-side pagination.
const int kExtensionRequestListPageSize = 6;

/// Drives the Extension Requests screen (mockup A11): loads the extension
/// request list filtered by status, then paginates client-side.
class ExtensionRequestListCubit extends Cubit<ExtensionRequestListState> {
  ExtensionRequestListCubit() : super(const ExtensionRequestListState());

  List<ExtensionRequestSummaryResDm> _allExtensions = [];

  Future<void> loadExtensionRequests() async {
    safeEmit(state.copyWith(extensions: const Loading()));
    try {
      final result = await ExtensionRequestRepository.instance
          .fetchExtensionRequests(status: _statusFromFilter(state.statusFilter));
      result.when(
        success: (data) {
          _allExtensions = data;
          safeEmit(state.copyWith(extensions: Success(_paginated())));
        },
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(extensions: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(extensions: Error(errorManager.handle(e, st).message)),
      );
    }
  }

  ExtensionStatus? _statusFromFilter(String filter) {
    return switch (filter) {
      'pending' => ExtensionStatus.pending,
      'approved' => ExtensionStatus.approved,
      'rejected' => ExtensionStatus.rejected,
      _ => null,
    };
  }

  void setStatusFilter(String statusFilter) {
    safeEmit(state.copyWith(statusFilter: statusFilter, currentPage: 1));
    loadExtensionRequests();
  }

  void setPage(int page) {
    safeEmit(state.copyWith(currentPage: page));
    _reapplyPage();
  }

  Future<void> approve(String extensionId) => _decide(extensionId, approve: true);

  Future<void> reject(String extensionId) => _decide(extensionId, approve: false);

  Future<void> _decide(String extensionId, {required bool approve}) async {
    try {
      final result = approve
          ? await ExtensionRequestRepository.instance.approve(extensionId)
          : await ExtensionRequestRepository.instance.reject(extensionId);
      result.when(
        success: (_) {
          final index = _allExtensions.indexWhere((e) => e.id == extensionId);
          if (index != -1) {
            _allExtensions[index] = _allExtensions[index].copyWith(
              status: approve ? ExtensionStatus.approved : ExtensionStatus.rejected,
            );
          }
          _reapplyPage();
        },
        failure: errorManager.handle,
      );
    } catch (e, st) {
      onError(e, st);
      errorManager.handle(e, st);
    }
  }

  void _reapplyPage() {
    safeEmit(state.copyWith(extensions: Success(_paginated())));
  }

  List<ExtensionRequestSummaryResDm> _paginated() => _allExtensions;

  /// Full list for the current status filter (pre-pagination) — used by the
  /// screen to compute [TablePagination.totalItems] and slice the page.
  List<ExtensionRequestSummaryResDm> get filteredExtensionRequests => _allExtensions;
}

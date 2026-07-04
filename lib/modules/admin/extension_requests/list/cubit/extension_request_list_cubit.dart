import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/extension_requests/extension_request_repository.dart';
import '../../../../../repositories/remote_repository/extension_requests/models/decide_extension_req_dm.dart';
import '../../../../../repositories/remote_repository/extension_requests/models/extension_request_summary_res_dm.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';
import '../../../../../values/enumeration/statuses.dart';

part 'extension_request_list_state.dart';

/// Page size for the client-side pagination of the Extension Requests
/// table (mockup A11).
const int kExtensionRequestListPageSize = 6;

/// Drives the Extension Requests screen (mockup A11): loads the full mock
/// extension-request list once, then re-derives the filtered/paginated view
/// from the cached list whenever a filter or page changes.
class ExtensionRequestListCubit extends Cubit<ExtensionRequestListState> {
  ExtensionRequestListCubit() : super(const ExtensionRequestListState());

  List<ExtensionRequestSummaryResDm> _allExtensions = [];

  Future<void> loadExtensionRequests() async {
    safeEmit(state.copyWith(extensions: const Loading()));
    try {
      final result =
          await ExtensionRequestRepository.instance.fetchExtensionRequests();
      result.when(
        success: (data) {
          _allExtensions = data;
          safeEmit(state.copyWith(extensions: Success(_filtered())));
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

  void setStatusFilter(String statusFilter) {
    safeEmit(state.copyWith(statusFilter: statusFilter, currentPage: 1));
    _reapplyFilters();
  }

  void setPage(int page) {
    safeEmit(state.copyWith(currentPage: page));
    _reapplyFilters();
  }

  Future<void> approve(String extensionId) =>
      _decide(extensionId, ExtensionStatus.approved);

  Future<void> reject(String extensionId) =>
      _decide(extensionId, ExtensionStatus.rejected);

  Future<void> _decide(String extensionId, ExtensionStatus decision) async {
    try {
      final result = await ExtensionRequestRepository.instance.decideExtension(
        DecideExtensionReqDm(extensionId: extensionId, decision: decision),
      );
      result.when(
        success: (_) {
          final index =
              _allExtensions.indexWhere((e) => e.id == extensionId);
          if (index != -1) {
            _allExtensions[index] =
                _allExtensions[index].copyWith(status: decision);
          }
          _reapplyFilters();
        },
        failure: errorManager.handle,
      );
    } catch (e, st) {
      onError(e, st);
      errorManager.handle(e, st);
    }
  }

  void _reapplyFilters() {
    safeEmit(state.copyWith(extensions: Success(_filtered())));
  }

  List<ExtensionRequestSummaryResDm> _filtered() {
    return _allExtensions
        .where((e) => state.statusFilter == 'all' ||
            e.status.name == state.statusFilter)
        .toList();
  }

  /// Full filtered list (pre-pagination) — used by the screen to compute
  /// [TablePagination.totalItems] and to slice the current page.
  List<ExtensionRequestSummaryResDm> get filteredExtensionRequests =>
      _filtered();
}

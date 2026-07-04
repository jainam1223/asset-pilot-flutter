import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/requests/models/request_summary_res_dm.dart';
import '../../../../../repositories/remote_repository/requests/request_repository.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';
import '../../../../../values/enumeration/statuses.dart';

part 'request_list_state.dart';

/// Page size for the client-side pagination of the Request Management
/// table (mockup A02).
const int kRequestListPageSize = 6;

/// Drives the Request Management screen (mockup A02): loads the full mock
/// request list once, then re-derives the filtered/paginated view from the
/// cached list whenever a filter or page changes.
class RequestListCubit extends Cubit<RequestListState> {
  RequestListCubit() : super(const RequestListState());

  List<RequestSummaryResDm> _allRequests = [];

  Future<void> loadRequests() async {
    safeEmit(state.copyWith(requests: const Loading()));
    try {
      final result = await RequestRepository.instance.fetchRequests();
      result.when(
        success: (data) {
          _allRequests = data;
          safeEmit(state.copyWith(requests: Success(_filtered())));
        },
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(requests: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(requests: Error(errorManager.handle(e, st).message)));
    }
  }

  void setStatusFilter(String statusFilter) {
    safeEmit(state.copyWith(statusFilter: statusFilter, currentPage: 1));
    _reapplyFilters();
  }

  void setPriorityFilter(RequestPriority? priorityFilter) {
    safeEmit(
      state.copyWith(
        priorityFilter: priorityFilter,
        clearPriorityFilter: priorityFilter == null,
        currentPage: 1,
      ),
    );
    _reapplyFilters();
  }

  void setCategoryFilter(String categoryFilter) {
    safeEmit(state.copyWith(categoryFilter: categoryFilter, currentPage: 1));
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
    safeEmit(state.copyWith(requests: Success(_filtered())));
  }

  List<RequestSummaryResDm> _filtered() {
    final filtered = _allRequests.where((r) {
      final matchesStatus =
          state.statusFilter == 'all' || r.status.name == state.statusFilter;
      final matchesPriority =
          state.priorityFilter == null || r.priority == state.priorityFilter;
      final matchesCategory =
          state.categoryFilter == 'all' || r.category == state.categoryFilter;
      final matchesSearch = state.searchQuery.isEmpty ||
          r.employeeName.toLowerCase().contains(state.searchQuery.toLowerCase()) ||
          r.id.toLowerCase().contains(state.searchQuery.toLowerCase());
      return matchesStatus && matchesPriority && matchesCategory && matchesSearch;
    }).toList();
    return filtered;
  }

  /// Full filtered list (pre-pagination) — used by the screen to compute
  /// [TablePagination.totalItems] and to slice the current page.
  List<RequestSummaryResDm> get filteredRequests => _filtered();
}

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/requests/models/request_summary_res_dm.dart';
import '../../../../../repositories/remote_repository/requests/request_repository.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/helpers/debouncer.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';
import '../../../../../values/enumeration/statuses.dart';

part 'request_list_state.dart';

/// Page size for the server-side pagination of the Request Management
/// table (mockup A02).
const int kRequestListPageSize = 10;

/// Drives the Request Management screen (mockup A02): loads a server-side
/// paginated + filtered page of requests from [RequestRepository] whenever
/// a filter or page changes.
class RequestListCubit extends Cubit<RequestListState> {
  RequestListCubit() : super(const RequestListState());

  final _searchDebouncer = Debouncer();

  /// Loads a page of requests. When [keepData] is true (filter/search/page
  /// changes that already have a table on screen), the current [Success] rows
  /// stay visible during the fetch instead of collapsing to a centered
  /// spinner — this avoids the table "jumping" to a loader and back. A full
  /// [Loading] is only shown on the first load when there's nothing to keep.
  Future<void> loadRequests({bool keepData = false}) async {
    if (!keepData || state.requests.dataOrNull == null) {
      safeEmit(state.copyWith(requests: const Loading()));
    }
    try {
      final result = await RequestRepository.instance.fetchRequests(
        status: _statusFromFilter(state.statusFilter),
        priority: state.priorityFilter,
        categoryId: state.categoryFilter == 'all' ? null : state.categoryFilter,
        search: state.searchQuery.isEmpty ? null : state.searchQuery,
        page: state.currentPage,
        pageSize: kRequestListPageSize,
      );
      result.when(
        success: (data) => safeEmit(
          state.copyWith(
            requests: Success(data.items),
            totalItems: data.pagination.totalItems,
          ),
        ),
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

  RequestStatus? _statusFromFilter(String filter) {
    return switch (filter) {
      'all' => null,
      'pendingMgrApproval' => RequestStatus.pendingMgrApproval,
      'pendingItApproval' => RequestStatus.pendingItApproval,
      'assigned' => RequestStatus.assigned,
      'rejected' => RequestStatus.rejected,
      'completed' => RequestStatus.completed,
      _ => null,
    };
  }

  void setStatusFilter(String statusFilter) {
    safeEmit(state.copyWith(statusFilter: statusFilter, currentPage: 1));
    loadRequests(keepData: true);
  }

  void setPriorityFilter(RequestPriority? priorityFilter) {
    safeEmit(
      state.copyWith(
        priorityFilter: priorityFilter,
        clearPriorityFilter: priorityFilter == null,
        currentPage: 1,
      ),
    );
    loadRequests(keepData: true);
  }

  void setCategoryFilter(String categoryFilter) {
    safeEmit(state.copyWith(categoryFilter: categoryFilter, currentPage: 1));
    loadRequests(keepData: true);
  }

  void setSearchQuery(String searchQuery) {
    safeEmit(state.copyWith(searchQuery: searchQuery, currentPage: 1));
    _searchDebouncer.run(() => loadRequests(keepData: true));
  }

  void setPage(int page) {
    safeEmit(state.copyWith(currentPage: page));
    loadRequests(keepData: true);
  }

  @override
  Future<void> close() {
    _searchDebouncer.dispose();
    return super.close();
  }
}

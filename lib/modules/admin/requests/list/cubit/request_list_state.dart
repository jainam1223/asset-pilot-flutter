part of 'request_list_cubit.dart';

@immutable
class RequestListState extends Equatable {
  const RequestListState({
    this.requests = const Idle(),
    this.statusFilter = 'all',
    this.priorityFilter,
    this.categoryFilter = 'all',
    this.searchQuery = '',
    this.currentPage = 1,
    this.totalItems = 0,
  });

  final NetworkState<List<RequestSummaryResDm>> requests;

  /// One of the raw `RequestStatus` enum names, or `'all'`.
  final String statusFilter;
  final RequestPriority? priorityFilter;

  /// A category id, or `'all'`.
  final String categoryFilter;
  final String searchQuery;
  final int currentPage;

  /// Total matching rows on the server, from `meta.pagination.total_items`.
  final int totalItems;

  RequestListState copyWith({
    NetworkState<List<RequestSummaryResDm>>? requests,
    String? statusFilter,
    RequestPriority? priorityFilter,
    bool clearPriorityFilter = false,
    String? categoryFilter,
    String? searchQuery,
    int? currentPage,
    int? totalItems,
  }) {
    return RequestListState(
      requests: requests ?? this.requests,
      statusFilter: statusFilter ?? this.statusFilter,
      priorityFilter: clearPriorityFilter ? null : (priorityFilter ?? this.priorityFilter),
      categoryFilter: categoryFilter ?? this.categoryFilter,
      searchQuery: searchQuery ?? this.searchQuery,
      currentPage: currentPage ?? this.currentPage,
      totalItems: totalItems ?? this.totalItems,
    );
  }

  @override
  List<Object?> get props => [
        requests,
        statusFilter,
        priorityFilter,
        categoryFilter,
        searchQuery,
        currentPage,
        totalItems,
      ];
}

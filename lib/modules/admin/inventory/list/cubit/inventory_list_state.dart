part of 'inventory_list_cubit.dart';

@immutable
class InventoryListState extends Equatable {
  const InventoryListState({
    this.items = const Idle(),
    this.statusFilter = 'all',
    this.categoryFilter = 'all',
    this.searchQuery = '',
    this.currentPage = 1,
    this.totalItems = 0,
  });

  final NetworkState<List<InventoryItemResDm>> items;

  /// One of the raw `DeviceStatus` enum names, or `'all'`.
  final String statusFilter;

  /// A category id, or `'all'`.
  final String categoryFilter;
  final String searchQuery;
  final int currentPage;

  /// Total matching rows on the server, from `meta.pagination.total_items`.
  final int totalItems;

  InventoryListState copyWith({
    NetworkState<List<InventoryItemResDm>>? items,
    String? statusFilter,
    String? categoryFilter,
    String? searchQuery,
    int? currentPage,
    int? totalItems,
  }) {
    return InventoryListState(
      items: items ?? this.items,
      statusFilter: statusFilter ?? this.statusFilter,
      categoryFilter: categoryFilter ?? this.categoryFilter,
      searchQuery: searchQuery ?? this.searchQuery,
      currentPage: currentPage ?? this.currentPage,
      totalItems: totalItems ?? this.totalItems,
    );
  }

  @override
  List<Object?> get props => [
        items,
        statusFilter,
        categoryFilter,
        searchQuery,
        currentPage,
        totalItems,
      ];
}

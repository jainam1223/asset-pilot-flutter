part of 'inventory_list_cubit.dart';

@immutable
class InventoryListState extends Equatable {
  const InventoryListState({
    this.items = const Idle(),
    this.statusFilter = 'all',
    this.categoryFilter = 'all',
    this.searchQuery = '',
    this.currentPage = 1,
  });

  final NetworkState<List<InventoryItemResDm>> items;

  /// One of the raw `DeviceStatus` enum names, or `'all'`.
  final String statusFilter;

  /// One of the inventory categories (e.g. `'Laptop'`), or `'all'`.
  final String categoryFilter;
  final String searchQuery;
  final int currentPage;

  InventoryListState copyWith({
    NetworkState<List<InventoryItemResDm>>? items,
    String? statusFilter,
    String? categoryFilter,
    String? searchQuery,
    int? currentPage,
  }) {
    return InventoryListState(
      items: items ?? this.items,
      statusFilter: statusFilter ?? this.statusFilter,
      categoryFilter: categoryFilter ?? this.categoryFilter,
      searchQuery: searchQuery ?? this.searchQuery,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [
        items,
        statusFilter,
        categoryFilter,
        searchQuery,
        currentPage,
      ];
}

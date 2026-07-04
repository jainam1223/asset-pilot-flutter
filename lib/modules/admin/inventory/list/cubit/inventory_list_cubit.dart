import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/inventory/inventory_repository.dart';
import '../../../../../repositories/remote_repository/inventory/models/inventory_item_res_dm.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';

part 'inventory_list_state.dart';

/// Page size for the client-side pagination of the Inventory Management
/// table (mockup A04).
const int kInventoryListPageSize = 6;

/// Drives the Inventory Management screen (mockup A04): loads the full mock
/// inventory list once, then re-derives the filtered/paginated view from the
/// cached list whenever a filter or page changes.
class InventoryListCubit extends Cubit<InventoryListState> {
  InventoryListCubit() : super(const InventoryListState());

  List<InventoryItemResDm> _allItems = [];

  Future<void> loadInventory() async {
    safeEmit(state.copyWith(items: const Loading()));
    try {
      final result = await InventoryRepository.instance.fetchInventory();
      result.when(
        success: (data) {
          _allItems = data;
          safeEmit(state.copyWith(items: Success(_filtered())));
        },
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(items: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(items: Error(errorManager.handle(e, st).message)));
    }
  }

  void setStatusFilter(String statusFilter) {
    safeEmit(state.copyWith(statusFilter: statusFilter, currentPage: 1));
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
    safeEmit(state.copyWith(items: Success(_filtered())));
  }

  List<InventoryItemResDm> _filtered() {
    final filtered = _allItems.where((item) {
      final matchesStatus =
          state.statusFilter == 'all' || item.status.name == state.statusFilter;
      final matchesCategory =
          state.categoryFilter == 'all' || item.category == state.categoryFilter;
      final matchesSearch = state.searchQuery.isEmpty ||
          item.name.toLowerCase().contains(state.searchQuery.toLowerCase()) ||
          item.serial.toLowerCase().contains(state.searchQuery.toLowerCase());
      return matchesStatus && matchesCategory && matchesSearch;
    }).toList();
    return filtered;
  }

  /// Full filtered list (pre-pagination) — used by the screen to compute
  /// [TablePagination.totalItems] and to slice the current page.
  List<InventoryItemResDm> get filteredItems => _filtered();
}

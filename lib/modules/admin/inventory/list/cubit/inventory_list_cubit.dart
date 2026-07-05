import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/inventory/inventory_repository.dart';
import '../../../../../repositories/remote_repository/inventory/models/inventory_item_res_dm.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
import '../../../../../utilities/helpers/debouncer.dart';
import '../../../../../utilities/network/network_state.dart';
import '../../../../../utilities/network/safe_emit.dart';
import '../../../../../values/enumeration/statuses.dart';

part 'inventory_list_state.dart';

/// Page size for the server-side pagination of the Inventory Management
/// table (mockup A04).
const int kInventoryListPageSize = 10;

/// Drives the Inventory Management screen (mockup A04): loads a server-side
/// paginated + filtered page of devices from [InventoryRepository] whenever
/// a filter or page changes.
class InventoryListCubit extends Cubit<InventoryListState> {
  InventoryListCubit() : super(const InventoryListState());

  final _searchDebouncer = Debouncer();

  /// Loads a page of inventory. When [keepData] is true (filter/search/page
  /// changes that already have a table on screen), the current [Success] rows
  /// stay visible during the fetch instead of collapsing to a centered
  /// spinner — this avoids the table "jumping" to a loader and back. A full
  /// [Loading] is only shown on the first load when there's nothing to keep.
  Future<void> loadInventory({bool keepData = false}) async {
    if (!keepData || state.items.dataOrNull == null) {
      safeEmit(state.copyWith(items: const Loading()));
    }
    try {
      final result = await InventoryRepository.instance.fetchInventory(
        status: _statusFromFilter(state.statusFilter),
        categoryId: state.categoryFilter == 'all' ? null : state.categoryFilter,
        search: state.searchQuery.isEmpty ? null : state.searchQuery,
        page: state.currentPage,
        pageSize: kInventoryListPageSize,
      );
      result.when(
        success: (data) => safeEmit(
          state.copyWith(
            items: Success(data.items),
            totalItems: data.pagination.totalItems,
          ),
        ),
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

  DeviceStatus? _statusFromFilter(String filter) {
    if (filter == 'all') return null;
    return DeviceStatus.values.where((s) => s.name == filter).firstOrNull;
  }

  void setStatusFilter(String statusFilter) {
    safeEmit(state.copyWith(statusFilter: statusFilter, currentPage: 1));
    loadInventory(keepData: true);
  }

  void setCategoryFilter(String categoryFilter) {
    safeEmit(state.copyWith(categoryFilter: categoryFilter, currentPage: 1));
    loadInventory(keepData: true);
  }

  void setSearchQuery(String searchQuery) {
    safeEmit(state.copyWith(searchQuery: searchQuery, currentPage: 1));
    _searchDebouncer.run(() => loadInventory(keepData: true));
  }

  void setPage(int page) {
    safeEmit(state.copyWith(currentPage: page));
    loadInventory(keepData: true);
  }

  @override
  Future<void> close() {
    _searchDebouncer.dispose();
    return super.close();
  }
}

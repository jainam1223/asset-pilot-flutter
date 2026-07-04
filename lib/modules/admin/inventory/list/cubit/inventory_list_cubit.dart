import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../repositories/remote_repository/inventory/inventory_repository.dart';
import '../../../../../repositories/remote_repository/inventory/models/inventory_item_res_dm.dart';
import '../../../../../utilities/api_utilities/error_manager.dart';
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

  Future<void> loadInventory() async {
    safeEmit(state.copyWith(items: const Loading()));
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
    loadInventory();
  }

  void setCategoryFilter(String categoryFilter) {
    safeEmit(state.copyWith(categoryFilter: categoryFilter, currentPage: 1));
    loadInventory();
  }

  void setSearchQuery(String searchQuery) {
    safeEmit(state.copyWith(searchQuery: searchQuery, currentPage: 1));
    loadInventory();
  }

  void setPage(int page) {
    safeEmit(state.copyWith(currentPage: page));
    loadInventory();
  }
}

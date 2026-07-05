import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/dashboard/dashboard_repository.dart';
import '../../../../repositories/remote_repository/dashboard/models/open_support_snapshot_res_dm.dart';
import '../../../../repositories/remote_repository/dashboard/models/recent_request_res_dm.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'dashboard_state.dart';

/// Loads IT Admin dashboard KPIs, recent requests, and open support
/// snapshots from [DashboardRepository].
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState());

  /// Fires all three dashboard panel loads. Each manages its own
  /// [NetworkState] slice, so one panel failing doesn't block the others.
  void loadDashboard() {
    loadKpis();
    loadRecentRequests();
    loadOpenSupport();
  }

  Future<void> loadKpis() async {
    safeEmit(state.copyWith(kpis: const Loading()));
    try {
      final result = await DashboardRepository.instance.fetchSummary();
      result.when(
        success: (data) {
          final breakdown = data.statusBreakdown;
          final totalDevices = breakdown.values.fold<int>(0, (a, b) => a + b);
          final assigned = breakdown['assigned'] ?? 0;
          safeEmit(
            state.copyWith(
              kpis: Success(
                DashboardKpis(
                  totalDevices: totalDevices,
                  assigned: assigned,
                  pendingRequests: data.pendingRequestsCount,
                  openSupport: data.openSupportCount,
                  statusBreakdown: breakdown,
                ),
              ),
            ),
          );
        },
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(kpis: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(state.copyWith(kpis: Error(errorManager.handle(e, st).message)));
    }
  }

  Future<void> loadRecentRequests() async {
    safeEmit(state.copyWith(recentRequests: const Loading()));
    try {
      final result = await DashboardRepository.instance.fetchRecentRequests();
      result.when(
        success: (data) =>
            safeEmit(state.copyWith(recentRequests: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(recentRequests: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(
          recentRequests: Error(errorManager.handle(e, st).message),
        ),
      );
    }
  }

  Future<void> loadOpenSupport() async {
    safeEmit(state.copyWith(openSupport: const Loading()));
    try {
      final result = await DashboardRepository.instance
          .fetchOpenSupportSnapshot();
      result.when(
        success: (data) =>
            safeEmit(state.copyWith(openSupport: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(openSupport: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(openSupport: Error(errorManager.handle(e, st).message)),
      );
    }
  }
}

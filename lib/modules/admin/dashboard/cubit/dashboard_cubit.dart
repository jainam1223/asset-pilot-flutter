import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/dashboard/dashboard_repository.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'dashboard_state.dart';

/// Loads IT Admin dashboard KPIs from [DashboardRepository].
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState());

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
}

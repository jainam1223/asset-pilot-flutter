part of 'dashboard_cubit.dart';

/// Dashboard KPI tuple, derived from [DashboardSummaryResDm].
@immutable
class DashboardKpis extends Equatable {
  const DashboardKpis({
    required this.totalDevices,
    required this.assigned,
    required this.pendingRequests,
    required this.openSupport,
    this.statusBreakdown = const <String, int>{},
  });

  final int totalDevices;
  final int assigned;
  final int pendingRequests;
  final int openSupport;

  /// Raw `DeviceStatus` wire-value → count map from the summary endpoint,
  /// used by the Device Status Breakdown panel.
  final Map<String, int> statusBreakdown;

  @override
  List<Object?> get props => [
    totalDevices,
    assigned,
    pendingRequests,
    openSupport,
    statusBreakdown,
  ];
}

@immutable
class DashboardState extends Equatable {
  const DashboardState({
    this.kpis = const Idle(),
    this.recentRequests = const Idle(),
    this.openSupport = const Idle(),
  });

  final NetworkState<DashboardKpis> kpis;
  final NetworkState<List<RecentRequestResDm>> recentRequests;
  final NetworkState<List<OpenSupportSnapshotResDm>> openSupport;

  DashboardState copyWith({
    NetworkState<DashboardKpis>? kpis,
    NetworkState<List<RecentRequestResDm>>? recentRequests,
    NetworkState<List<OpenSupportSnapshotResDm>>? openSupport,
  }) {
    return DashboardState(
      kpis: kpis ?? this.kpis,
      recentRequests: recentRequests ?? this.recentRequests,
      openSupport: openSupport ?? this.openSupport,
    );
  }

  @override
  List<Object?> get props => [kpis, recentRequests, openSupport];
}

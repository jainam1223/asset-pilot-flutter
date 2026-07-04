part of 'dashboard_cubit.dart';

/// Simple KPI tuple for the dashboard (mock data for the scaffold).
@immutable
class DashboardKpis extends Equatable {
  const DashboardKpis({
    required this.totalDevices,
    required this.assigned,
    required this.pendingRequests,
    required this.openSupport,
  });

  final int totalDevices;
  final int assigned;
  final int pendingRequests;
  final int openSupport;

  @override
  List<Object?> get props => [
    totalDevices,
    assigned,
    pendingRequests,
    openSupport,
  ];
}

@immutable
class DashboardState extends Equatable {
  const DashboardState({this.kpis = const Idle()});

  final NetworkState<DashboardKpis> kpis;

  DashboardState copyWith({NetworkState<DashboardKpis>? kpis}) {
    return DashboardState(kpis: kpis ?? this.kpis);
  }

  @override
  List<Object?> get props => [kpis];
}

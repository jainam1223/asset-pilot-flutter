import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_summary_res_dm.freezed.dart';
part 'dashboard_summary_res_dm.g.dart';

/// Response for `GET /admin/dashboard/summary`.
///
/// [statusBreakdown] keys are `DeviceStatus` wire values (e.g. `available`,
/// `assigned`, `under_repair`) → count; total device count is the sum of its
/// values (the endpoint doesn't return a separate `total_devices` field).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class DashboardSummaryResDm with _$DashboardSummaryResDm {
  const factory DashboardSummaryResDm({
    @JsonKey(name: 'status_breakdown')
    @Default(<String, int>{})
    Map<String, int> statusBreakdown,
    @JsonKey(name: 'pending_requests_count')
    @Default(0)
    int pendingRequestsCount,
    @JsonKey(name: 'open_support_count') @Default(0) int openSupportCount,
    @JsonKey(name: 'active_handovers_count')
    @Default(0)
    int activeHandoversCount,
    @JsonKey(name: 'pending_extensions_count')
    @Default(0)
    int pendingExtensionsCount,
  }) = _DashboardSummaryResDm;

  factory DashboardSummaryResDm.fromJson(Map<String, dynamic> json) =>
      _$DashboardSummaryResDmFromJson(json);
}

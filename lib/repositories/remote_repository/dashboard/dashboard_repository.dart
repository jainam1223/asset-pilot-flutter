import '../../../models/api_response/api_result.dart';
import '../api_repository/api_repository.dart';
import 'models/dashboard_summary_res_dm.dart';
import 'models/open_support_snapshot_res_dm.dart';
import 'models/recent_request_res_dm.dart';

/// Repository for the admin Dashboard screen (mockup A01).
///
/// Singleton via a private constructor + [instance], per convention.
class DashboardRepository extends Repository {
  DashboardRepository._();

  static final DashboardRepository instance = DashboardRepository._();

  Future<ApiResult<DashboardSummaryResDm>> fetchSummary() {
    return apiService.fetchDashboardSummary();
  }

  Future<ApiResult<List<RecentRequestResDm>>> fetchRecentRequests({int? limit}) {
    return apiService.fetchRecentRequests(limit: limit);
  }

  Future<ApiResult<List<OpenSupportSnapshotResDm>>> fetchOpenSupportSnapshot({
    int? limit,
  }) {
    return apiService.fetchOpenSupportSnapshot(limit: limit);
  }
}

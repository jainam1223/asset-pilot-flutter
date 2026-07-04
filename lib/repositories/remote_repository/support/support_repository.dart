import '../../../models/api_response/api_result.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import 'models/resolve_support_req_dm.dart';
import 'models/support_summary_res_dm.dart';
import 'models/swap_target_device_res_dm.dart';

/// Repository for the admin Support Requests & Resolve screen (mockup A08).
///
/// Singleton via a private constructor + [instance], per convention. NOTE:
/// this scaffold is not wired to a live backend — every method below returns
/// MOCKED data from an in-memory list. When the API is ready, replace the
/// mock body with the real `apiService` call shown in each method's REAL
/// comment.
class SupportRepository extends Repository {
  SupportRepository._();

  static final SupportRepository instance = SupportRepository._();

  static final List<SupportSummaryResDm> _mockTickets = [
    const SupportSummaryResDm(
      id: '#71',
      deviceName: 'iPhone 15 Pro',
      type: SupportType.damage,
      status: SupportStatus.open,
      description: 'Screen cracked after drop — needs replacement unit.',
      filedAt: '02 Jul 2026',
    ),
    const SupportSummaryResDm(
      id: '#70',
      deviceName: 'MacBook Pro 16"',
      type: SupportType.update,
      status: SupportStatus.open,
      description: 'Need Docker Desktop + Xcode CLI tools installed.',
      filedAt: '01 Jul 2026',
    ),
    const SupportSummaryResDm(
      id: '#69',
      deviceName: 'MX Master 3S',
      type: SupportType.damage,
      status: SupportStatus.inProgress,
      description: 'Scroll wheel intermittently unresponsive.',
      filedAt: '28 Jun 2026',
    ),
    const SupportSummaryResDm(
      id: '#68',
      deviceName: 'ThinkPad X1',
      type: SupportType.lost,
      status: SupportStatus.resolved,
      description: 'Device misplaced during travel.',
      filedAt: '20 Jun 2026',
    ),
    const SupportSummaryResDm(
      id: '#67',
      deviceName: 'Dell U2723QE',
      type: SupportType.damage,
      status: SupportStatus.open,
      description: 'Dead pixels in the top-left corner.',
      filedAt: '18 Jun 2026',
    ),
    const SupportSummaryResDm(
      id: '#66',
      deviceName: 'iPad Pro 11"',
      type: SupportType.update,
      status: SupportStatus.inProgress,
      description: 'Requesting MDM profile re-enrollment.',
      filedAt: '15 Jun 2026',
    ),
    const SupportSummaryResDm(
      id: '#65',
      deviceName: 'Sony WH-1000XM5',
      type: SupportType.lost,
      status: SupportStatus.resolved,
      description: 'Left behind at client office.',
      filedAt: '11 Jun 2026',
    ),
    const SupportSummaryResDm(
      id: '#64',
      deviceName: 'Logitech Brio',
      type: SupportType.damage,
      status: SupportStatus.resolved,
      description: 'USB connector bent; replaced under warranty.',
      filedAt: '05 Jun 2026',
    ),
  ];

  /// List support tickets for the admin Support Requests table (A08).
  /// Currently mocked.
  Future<ApiResult<List<SupportSummaryResDm>>> fetchSupportRequests() async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return ApiSuccess<List<SupportSummaryResDm>>(List.of(_mockTickets));
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchSupportRequests();
  }

  /// Available replacement devices for the A08 "Swapped" resolution flow.
  /// Currently mocked.
  Future<ApiResult<List<SwapTargetDeviceResDm>>> fetchSwapTargets() async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 300));
    return const ApiSuccess<List<SwapTargetDeviceResDm>>([
      SwapTargetDeviceResDm(
        id: 'dev_iphone_15_pro_2',
        name: 'iPhone 15 Pro',
        serial: 'F2M9K3LPQ1',
      ),
      SwapTargetDeviceResDm(
        id: 'dev_macbook_pro_14',
        name: 'MacBook Pro 14" M3',
        serial: 'C02YR2K8QF3',
      ),
      SwapTargetDeviceResDm(
        id: 'dev_dell_u2723qe_2',
        name: 'Dell U2723QE',
        serial: 'DU-2723-QF',
      ),
    ]);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchSwapTargets();
  }

  /// Resolve a support ticket (A08 "Save Resolution"). Currently mocked;
  /// mutates the in-memory list so the row reflects `resolved` this session.
  Future<ApiResult<void>> resolveSupportRequest(
    ResolveSupportReqDm body,
  ) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    final index = _mockTickets.indexWhere((t) => t.id == body.supportId);
    if (index != -1) {
      _mockTickets[index] = _mockTickets[index].copyWith(
        status: SupportStatus.resolved,
      );
    }
    return const ApiSuccess<void>(null);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.resolveSupportRequest(body.supportId, body);
  }
}

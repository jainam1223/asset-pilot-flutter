import '../../../models/api_response/api_result.dart';
import '../../../models/exceptions/app_exception.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import '../extension_requests/models/extension_request_summary_res_dm.dart';
import 'models/pending_approval_res_dm.dart';
import 'models/team_device_res_dm.dart';

/// Repository backing the Manager mobile screens (mockups M01–M04).
///
/// Singleton via a private constructor + [instance], per convention. NOTE:
/// this scaffold is not wired to a live backend — every method below returns
/// MOCKED data from an in-memory list. When the API is ready, replace the
/// mock body with the real `apiService` call shown in each method's REAL
/// comment.
class ManagerRepository extends Repository {
  ManagerRepository._();

  static final ManagerRepository instance = ManagerRepository._();

  static final List<PendingApprovalResDm> _mockApprovals = [
    const PendingApprovalResDm(
      id: 'req_2041',
      employeeName: 'Arjun Mehta',
      category: 'Laptop',
      priority: RequestPriority.high,
      requestedFrom: '15 Jul 2026',
      requestedTo: '15 Jan 2026',
      note:
          "Current laptop battery is failing and won't hold charge through "
          'my client demo next week. Requesting a replacement.',
      mgrApprovalStatus: MgrApprovalStatus.pending,
    ),
    const PendingApprovalResDm(
      id: 'req_2042',
      employeeName: 'Ravi Sharma',
      category: 'Monitor',
      priority: RequestPriority.medium,
      requestedFrom: '01 Aug 2026',
      requestedTo: '31 Jan 2026',
      mgrApprovalStatus: MgrApprovalStatus.pending,
    ),
    const PendingApprovalResDm(
      id: 'req_2043',
      employeeName: 'Meera Iyer',
      category: 'Mobile',
      priority: RequestPriority.low,
      requestedFrom: '10 Aug 2026',
      requestedTo: '10 Feb 2026',
      mgrApprovalStatus: MgrApprovalStatus.pending,
    ),
  ];

  static final List<ExtensionRequestSummaryResDm> _mockExtensions = [
    ExtensionRequestSummaryResDm(
      id: '#54',
      employeeName: 'Arjun Mehta',
      deviceName: 'MacBook Pro 16" M3',
      currentToDate: DateTime(2026, 8, 4),
      extendToDate: DateTime(2026, 11, 4),
      mgrApprovalStatus: MgrApprovalStatus.pending,
      status: ExtensionStatus.pending,
    ),
    ExtensionRequestSummaryResDm(
      id: '#53',
      employeeName: 'Ravi Sharma',
      deviceName: 'Dell UltraSharp U2723QE',
      currentToDate: DateTime(2026, 12, 31),
      extendToDate: DateTime(2027, 3, 31),
      mgrApprovalStatus: MgrApprovalStatus.pending,
      status: ExtensionStatus.pending,
    ),
  ];

  static final List<TeamMemberResDm> _mockTeamDevices = [
    const TeamMemberResDm(
      id: 'u_arjun',
      name: 'Arjun Mehta',
      devices: [
        TeamDeviceResDm(
          id: 'itm_1',
          deviceName: 'MacBook Pro 16" M3',
          category: 'Laptop · to 04 Aug 2026',
          status: DeviceStatus.assigned,
        ),
        TeamDeviceResDm(
          id: 'itm_2',
          deviceName: 'iPhone 15 Pro',
          category: 'Mobile · to 10 Jul 2026',
          status: DeviceStatus.assigned,
        ),
      ],
    ),
    const TeamMemberResDm(
      id: 'u_ravi',
      name: 'Ravi Sharma',
      devices: [
        TeamDeviceResDm(
          id: 'itm_3',
          deviceName: 'ThinkPad X1 Carbon',
          category: 'Laptop · to 12 Sep 2026',
          status: DeviceStatus.shippingPending,
        ),
      ],
    ),
    const TeamMemberResDm(
      id: 'u_meera',
      name: 'Meera Iyer',
      devices: [
        TeamDeviceResDm(
          id: 'itm_4',
          deviceName: 'Dell WD22 Dock',
          category: 'Accessory · to 30 Nov 2026',
          status: DeviceStatus.assigned,
        ),
      ],
    ),
  ];

  /// Pending approvals awaiting this manager's decision (M01). Currently
  /// mocked.
  Future<ApiResult<List<PendingApprovalResDm>>> getPendingApprovals() async {
    // --- MOCK ---------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return ApiSuccess<List<PendingApprovalResDm>>(
      _mockApprovals
          .where((a) => a.mgrApprovalStatus == MgrApprovalStatus.pending)
          .toList(growable: false),
    );
    // --- REAL (enable when backend exists) ----------------------------------
    // return apiService.getPendingApprovals(CurrentUser.managerId);
  }

  /// Single approval detail (M02). Currently mocked.
  Future<ApiResult<PendingApprovalResDm>> getApprovalDetail(
    String requestId,
  ) async {
    // --- MOCK ---------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 300));
    final match = _mockApprovals.where((a) => a.id == requestId).firstOrNull;
    if (match == null) {
      return const ApiFailure<PendingApprovalResDm>(
        NetworkException('Approval not found.'),
      );
    }
    return ApiSuccess<PendingApprovalResDm>(match);
    // --- REAL (enable when backend exists) ----------------------------------
    // return apiService.getApprovalDetail(requestId);
  }

  /// Approve or reject a device request (M02 "Approve"/"Reject"). Currently
  /// mocked; mutates the in-memory list so the row reflects the decision
  /// this session.
  Future<ApiResult<void>> decideApproval({
    required String requestId,
    required MgrApprovalStatus decision,
    String? note,
  }) async {
    // --- MOCK ---------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    final index = _mockApprovals.indexWhere((a) => a.id == requestId);
    if (index != -1) {
      _mockApprovals[index] = _mockApprovals[index].copyWith(
        mgrApprovalStatus: decision,
        decisionNote: note,
      );
    }
    return const ApiSuccess<void>(null);
    // --- REAL (enable when backend exists) ----------------------------------
    // return apiService.decideApproval(requestId, decision, note);
  }

  /// Extension requests awaiting this manager's decision (M03). Currently
  /// mocked.
  Future<ApiResult<List<ExtensionRequestSummaryResDm>>>
  getExtensionApprovals() async {
    // --- MOCK ---------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return ApiSuccess<List<ExtensionRequestSummaryResDm>>(
      _mockExtensions
          .where((e) => e.status == ExtensionStatus.pending)
          .toList(growable: false),
    );
    // --- REAL (enable when backend exists) ----------------------------------
    // return apiService.getExtensionApprovals(CurrentUser.managerId);
  }

  /// Approve or reject a device extension request (M03 "Approve"/"Reject").
  /// Currently mocked; mutates the in-memory list so the row reflects the
  /// decision this session.
  Future<ApiResult<void>> decideExtension({
    required String extensionId,
    required ExtensionStatus decision,
  }) async {
    // --- MOCK ---------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    final index = _mockExtensions.indexWhere((e) => e.id == extensionId);
    if (index != -1) {
      _mockExtensions[index] = _mockExtensions[index].copyWith(
        status: decision,
      );
    }
    return const ApiSuccess<void>(null);
    // --- REAL (enable when backend exists) ----------------------------------
    // return apiService.approveExtension(extensionId, ...) /
    //        apiService.rejectExtension(extensionId, ...);
  }

  /// Read-only device list for this manager's direct reports (M04).
  /// Currently mocked.
  Future<ApiResult<List<TeamMemberResDm>>> getTeamDevices() async {
    // --- MOCK ---------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return ApiSuccess<List<TeamMemberResDm>>(List.of(_mockTeamDevices));
    // --- REAL (enable when backend exists) ----------------------------------
    // return apiService.getTeamDevices(CurrentUser.managerId);
  }
}

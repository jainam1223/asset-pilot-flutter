import '../../../models/api_response/api_result.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import 'models/decide_extension_req_dm.dart';
import 'models/extension_request_summary_res_dm.dart';

/// Repository for the admin Extension Requests screen (mockup A11).
///
/// Singleton via a private constructor + [instance], per convention. NOTE:
/// this scaffold is not wired to a live backend — every method below returns
/// MOCKED data from an in-memory list. When the API is ready, replace the
/// mock body with the real `apiService` call shown in each method's REAL
/// comment.
class ExtensionRequestRepository extends Repository {
  ExtensionRequestRepository._();

  static final ExtensionRequestRepository instance =
      ExtensionRequestRepository._();

  static final List<ExtensionRequestSummaryResDm> _mockExtensions = [
    const ExtensionRequestSummaryResDm(
      id: '#54',
      employeeName: 'Arjun Mehta',
      deviceName: 'MacBook Pro 16" M3',
      currentToDate: '04 Aug 2026',
      extendToDate: '04 Nov 2026',
      mgrApprovalStatus: MgrApprovalStatus.approved,
      status: ExtensionStatus.pending,
    ),
    const ExtensionRequestSummaryResDm(
      id: '#53',
      employeeName: 'Ravi Sharma',
      deviceName: 'Dell UltraSharp U2723QE',
      currentToDate: '31 Dec 2026',
      extendToDate: '31 Mar 2027',
      mgrApprovalStatus: MgrApprovalStatus.pending,
      status: ExtensionStatus.pending,
    ),
    const ExtensionRequestSummaryResDm(
      id: '#52',
      employeeName: 'Meera Iyer',
      deviceName: 'iPhone 15 Pro',
      currentToDate: '10 Jul 2026',
      extendToDate: '10 Oct 2026',
      mgrApprovalStatus: MgrApprovalStatus.approved,
      status: ExtensionStatus.approved,
    ),
    const ExtensionRequestSummaryResDm(
      id: '#51',
      employeeName: 'Karan Shah',
      deviceName: 'ThinkPad X1 Carbon',
      currentToDate: '12 Sep 2026',
      extendToDate: '12 Dec 2026',
      mgrApprovalStatus: MgrApprovalStatus.rejected,
      status: ExtensionStatus.rejected,
    ),
  ];

  /// List extension requests for the admin Extension Requests table (A11).
  /// Currently mocked.
  Future<ApiResult<List<ExtensionRequestSummaryResDm>>>
      fetchExtensionRequests() async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return ApiSuccess<List<ExtensionRequestSummaryResDm>>(
      List.of(_mockExtensions),
    );
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.fetchExtensionRequests();
  }

  /// Approve or reject an extension request (A11 "Approve"/"Reject").
  /// Currently mocked; mutates the in-memory list so the row reflects the
  /// decision this session.
  Future<ApiResult<void>> decideExtension(DecideExtensionReqDm body) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 400));
    _updateStatus(body.extensionId, body.decision);
    return const ApiSuccess<void>(null);
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.decideExtension(body.extensionId, body);
  }

  void _updateStatus(String extensionId, ExtensionStatus status) {
    final index = _mockExtensions.indexWhere((e) => e.id == extensionId);
    if (index == -1) return;
    _mockExtensions[index] = _mockExtensions[index].copyWith(status: status);
  }
}

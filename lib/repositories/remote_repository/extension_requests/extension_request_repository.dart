import '../../../models/api_response/api_result.dart';
import '../../../values/enumeration/statuses.dart';
import '../api_repository/api_repository.dart';
import 'models/decide_extension_req_dm.dart';
import 'models/extension_request_detail_res_dm.dart';
import 'models/extension_request_summary_res_dm.dart';

/// Repository for the admin Extension Requests screen (mockup A11).
///
/// Singleton via a private constructor + [instance], per convention.
class ExtensionRequestRepository extends Repository {
  ExtensionRequestRepository._();

  static final ExtensionRequestRepository instance =
      ExtensionRequestRepository._();

  /// List extension requests for the admin Extension Requests table (A11).
  Future<ApiResult<List<ExtensionRequestSummaryResDm>>> fetchExtensionRequests({
    ExtensionStatus? status,
  }) {
    return apiService.fetchExtensionRequests(status: status);
  }

  Future<ApiResult<ExtensionRequestDetailResDm>> fetchExtensionRequestDetail(
    String id,
  ) {
    return apiService.fetchExtensionRequestDetail(id);
  }

  /// Approve an extension request (A11 "Approve").
  Future<ApiResult<void>> approve(String extensionId, {String? itNote}) {
    return apiService.approveExtension(
      extensionId,
      DecideExtensionReqDm(itNote: itNote),
    );
  }

  /// Reject an extension request (A11 "Reject").
  Future<ApiResult<void>> reject(String extensionId, {String? itNote}) {
    return apiService.rejectExtension(
      extensionId,
      DecideExtensionReqDm(itNote: itNote),
    );
  }
}

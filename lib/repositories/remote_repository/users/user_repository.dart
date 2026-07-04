import '../../../models/api_response/api_result.dart';
import '../../../models/api_response/paginated_res_dm.dart';
import '../../../values/enumeration/user_role.dart';
import '../api_repository/api_repository.dart';
import '../common/models/user_res_dm.dart';
import 'models/change_role_req_dm.dart';
import 'models/create_user_req_dm.dart';

/// Repository for admin User Management (mockup A14). No screen is built
/// for this yet — this wires the API layer only, per the current scope.
///
/// Singleton via a private constructor + [instance], per convention.
class UserRepository extends Repository {
  UserRepository._();

  static final UserRepository instance = UserRepository._();

  Future<ApiResult<PaginatedResDm<UserResDm>>> fetchUsers({
    UserRole? role,
    bool? isActive,
    String? search,
    int page = 1,
    int pageSize = 10,
  }) {
    return apiService.fetchUsers(
      role: role,
      isActive: isActive,
      search: search,
      page: page,
      pageSize: pageSize,
    );
  }

  Future<ApiResult<UserResDm>> createUser(CreateUserReqDm body) {
    return apiService.createUser(body);
  }

  Future<ApiResult<UserResDm>> changeUserRole(String id, ChangeRoleReqDm body) {
    return apiService.changeUserRole(id, body);
  }

  Future<ApiResult<UserResDm>> activateUser(String id) {
    return apiService.activateUser(id);
  }

  Future<ApiResult<UserResDm>> deactivateUser(String id) {
    return apiService.deactivateUser(id);
  }
}

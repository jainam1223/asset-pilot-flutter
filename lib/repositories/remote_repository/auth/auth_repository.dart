import '../../../models/api_response/api_result.dart';
import '../api_repository/api_repository.dart';
import '../common/models/user_res_dm.dart';
import 'models/login_req_dm.dart';

/// Repository for authentication.
///
/// Singleton via a private constructor + [instance], per convention.
class AuthRepository extends Repository {
  AuthRepository._();

  static final AuthRepository instance = AuthRepository._();

  /// Log in with [email]. The backend resolves role/manager from the user
  /// row — there's no client-supplied role flag.
  Future<ApiResult<UserResDm>> login({required String email}) {
    return apiService.login(LoginReqDm(email: email));
  }
}

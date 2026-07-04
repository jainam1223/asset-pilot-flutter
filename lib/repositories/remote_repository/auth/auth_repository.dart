import '../../../models/api_response/api_result.dart';
import '../../../values/app_global/admin_session.dart';
import '../../local_repository/secure_storage.dart';
import '../api_repository/api_repository.dart';
import '../common/models/user_res_dm.dart';
import 'models/login_req_dm.dart';
import 'models/login_res_dm.dart';

/// Repository for authentication.
///
/// Singleton via a private constructor + [instance], per convention.
class AuthRepository extends Repository {
  AuthRepository._();

  static final AuthRepository instance = AuthRepository._();

  /// Log in with [email] / [password]. On success, stores the token pair and
  /// fetches `/auth/me` to populate [AdminSession] before returning the user
  /// profile — callers (mobile and admin login cubits alike) get back the
  /// same `ApiResult<UserResDm>` shape either way.
  Future<ApiResult<UserResDm>> login({
    required String email,
    required String password,
  }) async {
    final loginResult = await apiService.login(
      LoginReqDm(email: email, password: password),
    );
    switch (loginResult) {
      case ApiFailure<LoginResDm>(:final error):
        return ApiFailure<UserResDm>(error);
      case ApiSuccess<LoginResDm>(:final data):
        await SecureStorage.instance.writeAuthToken(data.accessToken);
    }

    final meResult = await apiService.getMe();
    return meResult.when(
      success: (user) {
        AdminSession.set(
          id: user.id,
          name: user.name,
          email: user.email,
          role: user.role,
          managerId: user.managerId,
          isActive: user.isActive,
        );
        return ApiSuccess<UserResDm>(user);
      },
      failure: ApiFailure<UserResDm>.new,
    );
  }

  /// Clear the stored session (token + [AdminSession]).
  Future<void> logout() async {
    await SecureStorage.instance.clear();
    AdminSession.clear();
  }
}

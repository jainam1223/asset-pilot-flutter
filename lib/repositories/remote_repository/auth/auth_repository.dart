import '../../../models/api_response/api_result.dart';
import '../../../values/app_global/admin_session.dart';
import '../../local_repository/secure_storage.dart';
import '../api_repository/api_repository.dart';
import '../common/models/user_res_dm.dart';
import 'models/login_req_dm.dart';
import 'models/login_res_dm.dart';

/// Repository for authentication.
///
/// Two flows share this repository: the mobile employee/manager flow
/// ([login], email-only, backend resolves role) and the IT Admin flow
/// ([adminLogin], email + password with real bearer-token auth).
///
/// Singleton via a private constructor + [instance], per convention.
class AuthRepository extends Repository {
  AuthRepository._();

  static final AuthRepository instance = AuthRepository._();

  /// Mobile login with [email]. The backend resolves role/manager from the
  /// user row — there's no client-supplied role flag.
  Future<ApiResult<UserResDm>> login({required String email}) {
    return apiService.login(LoginReqDm(email: email));
  }

  /// IT Admin login with [email] / [password]. On success, stores the token
  /// pair and fetches `/auth/me` to populate [AdminSession] before returning
  /// the user profile. This is the real bearer-token auth the live backend
  /// requires.
  Future<ApiResult<UserResDm>> adminLogin({
    required String email,
    required String password,
  }) async {
    final loginResult = await apiService.adminLogin(
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

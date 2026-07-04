import '../../../models/api_response/api_result.dart';
import '../../../models/exceptions/app_exception.dart';
import '../api_repository/api_repository.dart';
import '../common/models/user_res_dm.dart';

/// Repository for authentication.
///
/// Singleton via a private constructor + [instance], per convention. NOTE:
/// this scaffold is not wired to a live backend — [login] returns MOCKED data.
/// When the API is ready, replace the mock body with
/// `apiService.login(LoginReqDm(...))`.
class AuthRepository extends Repository {
  AuthRepository._();

  static final AuthRepository instance = AuthRepository._();

  /// Log in with [email] / [password]. Currently mocked.
  ///
  /// [isManager] is a scaffold-only toggle (picked on the login screen) that
  /// stands in for a real backend-assigned role, so the Manager tab can be
  /// demoed before the manager screens/API exist.
  Future<ApiResult<UserResDm>> login({
    required String email,
    required String password,
    bool isManager = false,
  }) async {
    // --- MOCK -------------------------------------------------------------
    await Future<void>.delayed(const Duration(milliseconds: 600));
    if (email.isEmpty || password.isEmpty) {
      // Demonstrates the failure branch flowing through NetworkState.
      return const ApiFailure<UserResDm>(
        NetworkException('Email and password are required.'),
      );
    }
    return ApiSuccess<UserResDm>(
      UserResDm(
        id: 'u_001',
        name: 'Arjun Mehta',
        email: email,
        role: isManager ? 'manager' : 'employee',
        accessToken: 'mock-token',
      ),
    );
    // --- REAL (enable when backend exists) --------------------------------
    // return apiService.login(LoginReqDm(email: email, password: password));
  }
}

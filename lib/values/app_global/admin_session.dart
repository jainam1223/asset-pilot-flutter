/// The signed-in IT Admin's identity, populated from `GET /auth/me` after
/// login. Admin endpoints authenticate via the bearer token attached in
/// [DioClient] — these fields are for display/authorization checks only.
///
/// Kept separate from [CurrentUser] (mobile's employee identity) because that
/// class is used in `const` contexts on the mobile side and must not become
/// mutable.
abstract final class AdminSession {
  static String id = '';
  static String name = '';
  static String email = '';
  static String role = '';
  static String? managerId;
  static bool isActive = true;

  static void set({
    required String id,
    required String name,
    required String email,
    required String role,
    String? managerId,
    bool isActive = true,
  }) {
    AdminSession.id = id;
    AdminSession.name = name;
    AdminSession.email = email;
    AdminSession.role = role;
    AdminSession.managerId = managerId;
    AdminSession.isActive = isActive;
  }

  static void clear() {
    id = '';
    name = '';
    email = '';
    role = '';
    managerId = null;
    isActive = true;
  }
}

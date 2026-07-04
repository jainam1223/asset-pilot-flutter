/// Signed-in user id sent as `X-User-Id` on requests that are scoped to the
/// current employee (e.g. `GET /me/devices`).
///
/// DEFERRED: there is no auth session yet — [AuthRepository]'s mocked login
/// always returns id `u_001` (see auth_repository.dart), so that's hardcoded
/// here too. Once a real session exists, this becomes a read of the stored
/// logged-in user id instead of a constant.
abstract final class CurrentUser {
  static const String id = '71d58bd8-3750-4be0-8259-4c2a54728592';
  static const String name = 'Arjun Mehta';
  static const String managerId = 'mgr_priya_n';
  static const String managerName = 'Priya Nair';
}

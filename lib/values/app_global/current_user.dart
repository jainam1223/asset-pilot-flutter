import '../../repositories/local_repository/shared_pref/shared_pref.dart';

/// Reads the signed-in user (persisted by [SharedPref]) for call sites that
/// need the current employee's identity, e.g. `X-User-Id` headers on
/// `/me/*` requests.
abstract final class CurrentUser {
  static String get id => SharedPref.instance.user?.id ?? '';
  static String get name => SharedPref.instance.user?.name ?? '';
  static String? get managerId => SharedPref.instance.user?.managerId;

  /// The signed-in user's own display name in the reporting-manager context
  /// (a manager viewing their own approvals screen). Alias of [name].
  static String get managerName => name;
}

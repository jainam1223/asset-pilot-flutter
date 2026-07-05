import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../remote_repository/common/models/user_res_dm.dart';

/// Non-sensitive key-value app preferences.
///
/// Call [init] once during app startup before use.
class SharedPref {
  SharedPref._();

  static final SharedPref instance = SharedPref._();

  static const String _kOnboardingSeen = 'onboarding_seen';
  static const String _kUser = 'user';

  late final SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool get onboardingSeen => _prefs.getBool(_kOnboardingSeen) ?? false;

  Future<void> setOnboardingSeen(bool value) =>
      _prefs.setBool(_kOnboardingSeen, value);

  /// Signed-in user, or `null` if nobody is signed in.
  UserResDm? get user {
    final raw = _prefs.getString(_kUser);
    if (raw == null) return null;
    return UserResDm.fromJson(jsonDecode(raw) as Map<String, dynamic>);
  }

  Future<void> setUser(UserResDm user) =>
      _prefs.setString(_kUser, jsonEncode(user.toJson()));

  Future<void> clearUser() => _prefs.remove(_kUser);
}

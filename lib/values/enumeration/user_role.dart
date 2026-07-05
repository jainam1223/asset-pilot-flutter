import 'package:json_annotation/json_annotation.dart';

/// Role of the signed-in user. Drives which screens/actions are available.
enum UserRole {
  @JsonValue('employee')
  employee,
  @JsonValue('manager')
  manager,
  @JsonValue('it_admin')
  itAdmin,
}

/// Wire-value getter for Retrofit `@Query` params — see
/// `DeviceStatusWireValue` in `statuses.dart` for why this can't reuse
/// `@JsonValue`-driven `toJson()`.
extension UserRoleWireValue on UserRole {
  String toJson() => switch (this) {
    UserRole.employee => 'employee',
    UserRole.manager => 'manager',
    UserRole.itAdmin => 'it_admin',
  };
}

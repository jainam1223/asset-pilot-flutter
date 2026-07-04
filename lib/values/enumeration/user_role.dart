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

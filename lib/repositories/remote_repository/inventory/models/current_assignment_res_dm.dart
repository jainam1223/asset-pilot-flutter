import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_assignment_res_dm.freezed.dart';
part 'current_assignment_res_dm.g.dart';

/// The active assignment for a device, shown on the admin Device Detail
/// screen (mockup A05) when the device is currently assigned.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class CurrentAssignmentResDm with _$CurrentAssignmentResDm {
  const factory CurrentAssignmentResDm({
    @Default('') String requestId,
    @Default('') String requesterName,
    @Default('') String assignedFrom,
    @Default('') String assignedTo,
    @Default(false) bool workFromHome,
    @Default('') String shipTracking,
  }) = _CurrentAssignmentResDm;

  factory CurrentAssignmentResDm.fromJson(Map<String, dynamic> json) =>
      _$CurrentAssignmentResDmFromJson(json);
}

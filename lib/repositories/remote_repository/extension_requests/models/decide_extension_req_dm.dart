import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'decide_extension_req_dm.freezed.dart';
part 'decide_extension_req_dm.g.dart';

/// Request body for approving/rejecting an extension request (mockup A11).
@freezed
abstract class DecideExtensionReqDm with _$DecideExtensionReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory DecideExtensionReqDm({
    required String extensionId,
    required ExtensionStatus decision,
    String? note,
  }) = _DecideExtensionReqDm;

  factory DecideExtensionReqDm.fromJson(Map<String, dynamic> json) =>
      _$DecideExtensionReqDmFromJson(json);
}

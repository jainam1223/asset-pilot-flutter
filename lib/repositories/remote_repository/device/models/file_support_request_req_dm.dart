import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../values/enumeration/statuses.dart';

part 'file_support_request_req_dm.freezed.dart';
part 'file_support_request_req_dm.g.dart';

/// Request body for `POST /me/devices/{itemId}/support-requests` — file a
/// support ticket against an owned device (File Support Request screen).
@freezed
abstract class FileSupportRequestReqDm with _$FileSupportRequestReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory FileSupportRequestReqDm({
    required SupportType type,
    required String description,
  }) = _FileSupportRequestReqDm;

  factory FileSupportRequestReqDm.fromJson(Map<String, dynamic> json) =>
      _$FileSupportRequestReqDmFromJson(json);
}

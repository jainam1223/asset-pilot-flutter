import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_request_req_dm.freezed.dart';
part 'create_request_req_dm.g.dart';

/// Request body for `POST /me/requests` (Request Device, mockup E04).
@freezed
abstract class CreateRequestReqDm with _$CreateRequestReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory CreateRequestReqDm({
    required String categoryId,
    required DateTime requestedFrom,
    required DateTime requestedTo,
    required String priority,
    String? note,
    required bool isWfh,
  }) = _CreateRequestReqDm;

  factory CreateRequestReqDm.fromJson(Map<String, dynamic> json) =>
      _$CreateRequestReqDmFromJson(json);
}

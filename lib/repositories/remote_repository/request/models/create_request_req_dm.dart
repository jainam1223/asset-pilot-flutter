import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_request_req_dm.freezed.dart';
part 'create_request_req_dm.g.dart';

/// Request body for `POST /me/requests` (Request Device, mockup E04).
@freezed
abstract class CreateRequestReqDm with _$CreateRequestReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory CreateRequestReqDm({
    @JsonKey(name: 'category_id') required String categoryId,
    @JsonKey(name: 'requested_from') required DateTime requestedFrom,
    @JsonKey(name: 'requested_to') required DateTime requestedTo,
    required String priority,
    String? note,
    @JsonKey(name: 'is_wfh') required bool isWfh,
  }) = _CreateRequestReqDm;

  factory CreateRequestReqDm.fromJson(Map<String, dynamic> json) =>
      _$CreateRequestReqDmFromJson(json);
}

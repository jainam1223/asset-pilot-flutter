import 'package:freezed_annotation/freezed_annotation.dart';

part 'ship_req_dm.freezed.dart';
part 'ship_req_dm.g.dart';

/// Request body for `POST /admin/requests/{id}/ship` (WFH outbound queue).
@freezed
abstract class ShipReqDm with _$ShipReqDm {
  @JsonSerializable(includeIfNull: false)
  const factory ShipReqDm({
    @JsonKey(name: 'ship_tracking_url') required String shipTrackingUrl,
  }) = _ShipReqDm;

  factory ShipReqDm.fromJson(Map<String, dynamic> json) =>
      _$ShipReqDmFromJson(json);
}

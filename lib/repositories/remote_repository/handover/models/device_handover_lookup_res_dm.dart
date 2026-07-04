import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/models/handover_request_res_dm.dart';
import 'handover_lookup_item_res_dm.dart';
import 'handover_lookup_request_res_dm.dart';

part 'device_handover_lookup_res_dm.freezed.dart';
part 'device_handover_lookup_res_dm.g.dart';

/// Response of `GET /me/devices/{itemId}` — device detail + handover lookup
/// (Device Detail mockup E03, Request Handover mockup E13 pre-fill).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class DeviceHandoverLookupResDm with _$DeviceHandoverLookupResDm {
  const factory DeviceHandoverLookupResDm({
    HandoverLookupRequestResDm? request,
    required HandoverLookupItemResDm item,
    @Default(<HandoverRequestResDm>[])
    List<HandoverRequestResDm> handoverRequests,
  }) = _DeviceHandoverLookupResDm;

  factory DeviceHandoverLookupResDm.fromJson(Map<String, dynamic> json) =>
      _$DeviceHandoverLookupResDmFromJson(json);
}

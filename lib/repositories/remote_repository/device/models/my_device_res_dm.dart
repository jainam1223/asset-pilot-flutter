import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_category_res_dm.dart';
import 'item_res_dm.dart';

part 'my_device_res_dm.freezed.dart';
part 'my_device_res_dm.g.dart';

/// One row of `GET /me/devices` — a `request` row (camelCase, flat) for a
/// device currently on loan to (or in transit to/from) the signed-in
/// employee, with its `category` and `assignedItem` nested by the backend.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class MyDeviceResDm with _$MyDeviceResDm {
  const factory MyDeviceResDm({
    @Default('') String id,
    DateTime? assignedFrom,
    DateTime? assignedTo,
    @Default(false) bool isWfh,
    String? shipTrackingUrl,
    String? returnTrackingUrl,
    @Default('') String status,
    ItemCategoryResDm? category,
    ItemResDm? assignedItem,
  }) = _MyDeviceResDm;

  factory MyDeviceResDm.fromJson(Map<String, dynamic> json) =>
      _$MyDeviceResDmFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_item_res_dm.freezed.dart';
part 'client_item_res_dm.g.dart';

/// One available client-owned device, per
/// `GET /admin/items/client-available` (mockup A07 left panel).
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class ClientItemResDm with _$ClientItemResDm {
  const factory ClientItemResDm({
    @Default('') String id,
    @Default('') String name,
    @JsonKey(name: 'serial_no') @Default('') String serialNo,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'category_name') @Default('') String categoryName,
  }) = _ClientItemResDm;

  factory ClientItemResDm.fromJson(Map<String, dynamic> json) =>
      _$ClientItemResDmFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_res_dm.freezed.dart';
part 'item_res_dm.g.dart';

/// `item` row, nested under [MyDeviceResDm.assignedItem] — the physical
/// device assigned by a request. The backend sends this flat (camelCase,
/// no nested category — category comes from [MyDeviceResDm.category]).
@freezed
abstract class ItemResDm with _$ItemResDm {
  const factory ItemResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String serialNo,
    @Default('available') String status,
    String? qrCodeToken,
  }) = _ItemResDm;

  factory ItemResDm.fromJson(Map<String, dynamic> json) =>
      _$ItemResDmFromJson(json);
}

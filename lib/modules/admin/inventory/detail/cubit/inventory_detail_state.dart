part of 'inventory_detail_cubit.dart';

@immutable
class InventoryDetailState extends Equatable {
  const InventoryDetailState({this.detail = const Idle()});

  final NetworkState<InventoryDetailResDm> detail;

  InventoryDetailState copyWith({NetworkState<InventoryDetailResDm>? detail}) {
    return InventoryDetailState(detail: detail ?? this.detail);
  }

  @override
  List<Object?> get props => [detail];
}

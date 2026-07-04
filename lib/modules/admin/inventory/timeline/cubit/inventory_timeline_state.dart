part of 'inventory_timeline_cubit.dart';

@immutable
class InventoryTimelineState extends Equatable {
  const InventoryTimelineState({this.events = const Idle()});

  final NetworkState<List<DeviceTimelineEventResDm>> events;

  InventoryTimelineState copyWith({
    NetworkState<List<DeviceTimelineEventResDm>>? events,
  }) {
    return InventoryTimelineState(events: events ?? this.events);
  }

  @override
  List<Object?> get props => [events];
}

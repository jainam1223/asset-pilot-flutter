part of 'my_devices_cubit.dart';

/// An [ItemResDm] paired with its resolved category name, for display.
@immutable
class MyDevice extends Equatable {
  const MyDevice({required this.item, required this.categoryName});

  final ItemResDm item;
  final String categoryName;

  @override
  List<Object?> get props => [item, categoryName];
}

@immutable
class MyDevicesState extends Equatable {
  const MyDevicesState({this.devices = const Idle()});

  final NetworkState<List<MyDevice>> devices;

  MyDevicesState copyWith({NetworkState<List<MyDevice>>? devices}) {
    return MyDevicesState(devices: devices ?? this.devices);
  }

  @override
  List<Object?> get props => [devices];
}

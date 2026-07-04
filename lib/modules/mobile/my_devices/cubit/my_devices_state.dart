part of 'my_devices_cubit.dart';

@immutable
class MyDevicesState extends Equatable {
  const MyDevicesState({this.devices = const Idle()});

  final NetworkState<List<MyDeviceResDm>> devices;

  MyDevicesState copyWith({NetworkState<List<MyDeviceResDm>>? devices}) {
    return MyDevicesState(devices: devices ?? this.devices);
  }

  @override
  List<Object?> get props => [devices];
}

part of 'team_devices_cubit.dart';

@immutable
class TeamDevicesState extends Equatable {
  const TeamDevicesState({this.members = const Idle()});

  final NetworkState<List<EmployeeDeviceResDm>> members;

  TeamDevicesState copyWith({NetworkState<List<EmployeeDeviceResDm>>? members}) {
    return TeamDevicesState(members: members ?? this.members);
  }

  @override
  List<Object?> get props => [members];
}

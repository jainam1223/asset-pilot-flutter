part of 'login_cubit.dart';

@immutable
class AdminLoginState extends Equatable {
  const AdminLoginState({this.login = const Idle()});

  final NetworkState<UserResDm> login;

  AdminLoginState copyWith({NetworkState<UserResDm>? login}) {
    return AdminLoginState(login: login ?? this.login);
  }

  @override
  List<Object?> get props => [login];
}

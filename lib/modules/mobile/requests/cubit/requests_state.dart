part of 'requests_cubit.dart';

@immutable
class RequestsState extends Equatable {
  const RequestsState({this.requests = const Idle()});

  final NetworkState<List<RequestResDm>> requests;

  RequestsState copyWith({NetworkState<List<RequestResDm>>? requests}) {
    return RequestsState(requests: requests ?? this.requests);
  }

  @override
  List<Object?> get props => [requests];
}

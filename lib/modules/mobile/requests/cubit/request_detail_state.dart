part of 'request_detail_cubit.dart';

@immutable
class RequestDetailState extends Equatable {
  const RequestDetailState({this.request = const Idle()});

  final NetworkState<RequestResDm> request;

  RequestDetailState copyWith({NetworkState<RequestResDm>? request}) {
    return RequestDetailState(request: request ?? this.request);
  }

  @override
  List<Object?> get props => [request];
}

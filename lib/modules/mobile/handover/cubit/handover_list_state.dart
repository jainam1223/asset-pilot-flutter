part of 'handover_list_cubit.dart';

@immutable
class HandoverListState extends Equatable {
  const HandoverListState({
    this.asBorrower = true,
    this.requests = const Idle(),
  });

  final bool asBorrower;
  final NetworkState<List<HandoverRequestResDm>> requests;

  HandoverListState copyWith({
    bool? asBorrower,
    NetworkState<List<HandoverRequestResDm>>? requests,
  }) {
    return HandoverListState(
      asBorrower: asBorrower ?? this.asBorrower,
      requests: requests ?? this.requests,
    );
  }

  @override
  List<Object?> get props => [asBorrower, requests];
}

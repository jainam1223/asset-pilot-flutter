part of 'pending_approvals_cubit.dart';

@immutable
class PendingApprovalsState extends Equatable {
  const PendingApprovalsState({this.approvals = const Idle()});

  final NetworkState<List<RequestResDm>> approvals;

  PendingApprovalsState copyWith({
    NetworkState<List<RequestResDm>>? approvals,
  }) {
    return PendingApprovalsState(approvals: approvals ?? this.approvals);
  }

  @override
  List<Object?> get props => [approvals];
}

part of 'pending_approvals_cubit.dart';

@immutable
class PendingApprovalsState extends Equatable {
  const PendingApprovalsState({this.approvals = const Idle()});

  final NetworkState<List<PendingApprovalResDm>> approvals;

  PendingApprovalsState copyWith({
    NetworkState<List<PendingApprovalResDm>>? approvals,
  }) {
    return PendingApprovalsState(approvals: approvals ?? this.approvals);
  }

  @override
  List<Object?> get props => [approvals];
}

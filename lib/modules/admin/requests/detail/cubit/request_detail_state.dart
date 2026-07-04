part of 'request_detail_cubit.dart';

@immutable
class RequestDetailState extends Equatable {
  const RequestDetailState({
    this.detail = const Idle(),
    this.suggestions = const Idle(),
    this.selectedDeviceId,
    this.assignedFrom,
    this.assignedTo,
    this.workFromHome = false,
    this.submission = const Idle(),
  });

  final NetworkState<RequestDetailResDm> detail;
  final NetworkState<List<SuggestedDeviceResDm>> suggestions;
  final String? selectedDeviceId;
  final DateTime? assignedFrom;
  final DateTime? assignedTo;
  final bool workFromHome;
  final NetworkState<void> submission;

  RequestDetailState copyWith({
    NetworkState<RequestDetailResDm>? detail,
    NetworkState<List<SuggestedDeviceResDm>>? suggestions,
    String? selectedDeviceId,
    DateTime? assignedFrom,
    DateTime? assignedTo,
    bool? workFromHome,
    NetworkState<void>? submission,
  }) {
    return RequestDetailState(
      detail: detail ?? this.detail,
      suggestions: suggestions ?? this.suggestions,
      selectedDeviceId: selectedDeviceId ?? this.selectedDeviceId,
      assignedFrom: assignedFrom ?? this.assignedFrom,
      assignedTo: assignedTo ?? this.assignedTo,
      workFromHome: workFromHome ?? this.workFromHome,
      submission: submission ?? this.submission,
    );
  }

  @override
  List<Object?> get props => [
        detail,
        suggestions,
        selectedDeviceId,
        assignedFrom,
        assignedTo,
        workFromHome,
        submission,
      ];
}

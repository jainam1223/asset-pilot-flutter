part of 'request_handover_cubit.dart';

@immutable
class RequestHandoverState extends Equatable {
  const RequestHandoverState({this.note = '', this.submit = const Idle()});

  final String note;
  final NetworkState<HandoverRequestResDm> submit;

  RequestHandoverState copyWith({
    String? note,
    NetworkState<HandoverRequestResDm>? submit,
  }) {
    return RequestHandoverState(
      note: note ?? this.note,
      submit: submit ?? this.submit,
    );
  }

  @override
  List<Object?> get props => [note, submit];
}

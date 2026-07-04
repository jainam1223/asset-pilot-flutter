part of 'request_handover_cubit.dart';

@immutable
class RequestHandoverState extends Equatable {
  const RequestHandoverState({
    this.device = const Idle(),
    this.note = '',
    this.submit = const Idle(),
  });

  final NetworkState<DeviceHandoverLookupResDm> device;
  final String note;
  final NetworkState<HandoverRequestResDm> submit;

  RequestHandoverState copyWith({
    NetworkState<DeviceHandoverLookupResDm>? device,
    String? note,
    NetworkState<HandoverRequestResDm>? submit,
  }) {
    return RequestHandoverState(
      device: device ?? this.device,
      note: note ?? this.note,
      submit: submit ?? this.submit,
    );
  }

  @override
  List<Object?> get props => [device, note, submit];
}

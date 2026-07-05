part of 'request_handover_cubit.dart';

@immutable
class RequestHandoverState extends Equatable {
  const RequestHandoverState({
    this.device = const Idle(),
    this.note = '',
    this.durationHours = kDefaultHandoverDurationHours,
    this.submit = const Idle(),
  });

  final NetworkState<DeviceHandoverLookupResDm> device;
  final String note;
  final int durationHours;
  final NetworkState<HandoverRequestResDm> submit;

  RequestHandoverState copyWith({
    NetworkState<DeviceHandoverLookupResDm>? device,
    String? note,
    int? durationHours,
    NetworkState<HandoverRequestResDm>? submit,
  }) {
    return RequestHandoverState(
      device: device ?? this.device,
      note: note ?? this.note,
      durationHours: durationHours ?? this.durationHours,
      submit: submit ?? this.submit,
    );
  }

  @override
  List<Object?> get props => [device, note, durationHours, submit];
}

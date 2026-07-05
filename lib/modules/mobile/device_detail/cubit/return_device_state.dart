part of 'return_device_cubit.dart';

@immutable
class ReturnDeviceState extends Equatable {
  const ReturnDeviceState({
    this.trackingUrl = '',
    this.submit = const Idle(),
  });

  final String trackingUrl;
  final NetworkState<void> submit;

  ReturnDeviceState copyWith({
    String? trackingUrl,
    NetworkState<void>? submit,
  }) {
    return ReturnDeviceState(
      trackingUrl: trackingUrl ?? this.trackingUrl,
      submit: submit ?? this.submit,
    );
  }

  @override
  List<Object?> get props => [trackingUrl, submit];
}

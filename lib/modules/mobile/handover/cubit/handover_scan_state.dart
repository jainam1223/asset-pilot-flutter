part of 'handover_scan_cubit.dart';

@immutable
class HandoverScanState extends Equatable {
  const HandoverScanState({this.resolve = const Idle()});

  final NetworkState<DeviceByQrResDm> resolve;

  HandoverScanState copyWith({NetworkState<DeviceByQrResDm>? resolve}) {
    return HandoverScanState(resolve: resolve ?? this.resolve);
  }

  @override
  List<Object?> get props => [resolve];
}

part of 'manager_extensions_cubit.dart';

@immutable
class ManagerExtensionsState extends Equatable {
  const ManagerExtensionsState({this.extensions = const Idle()});

  final NetworkState<List<ExtensionRequestSummaryResDm>> extensions;

  ManagerExtensionsState copyWith({
    NetworkState<List<ExtensionRequestSummaryResDm>>? extensions,
  }) {
    return ManagerExtensionsState(extensions: extensions ?? this.extensions);
  }

  @override
  List<Object?> get props => [extensions];
}

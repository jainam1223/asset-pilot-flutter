part of 'extension_request_list_cubit.dart';

@immutable
class ExtensionRequestListState extends Equatable {
  const ExtensionRequestListState({
    this.extensions = const Idle(),
    this.statusFilter = 'pending',
    this.currentPage = 1,
  });

  final NetworkState<List<ExtensionRequestSummaryResDm>> extensions;

  /// One of the raw `ExtensionStatus` enum names, or `'all'`.
  final String statusFilter;
  final int currentPage;

  ExtensionRequestListState copyWith({
    NetworkState<List<ExtensionRequestSummaryResDm>>? extensions,
    String? statusFilter,
    int? currentPage,
  }) {
    return ExtensionRequestListState(
      extensions: extensions ?? this.extensions,
      statusFilter: statusFilter ?? this.statusFilter,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [extensions, statusFilter, currentPage];
}

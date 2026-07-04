part of 'support_list_cubit.dart';

@immutable
class SupportListState extends Equatable {
  const SupportListState({
    this.tickets = const Idle(),
    this.statusFilter = 'all',
    this.typeFilter,
    this.searchQuery = '',
    this.currentPage = 1,
    this.selectedTicket,
    this.resolution,
    this.oldDeviceStatus,
    this.swapTargets = const Idle(),
    this.swapTarget,
    this.itNote = '',
    this.resolving = const Idle(),
  });

  final NetworkState<List<SupportSummaryResDm>> tickets;

  /// One of the raw `SupportStatus` enum names, or `'all'`.
  final String statusFilter;
  final SupportType? typeFilter;
  final String searchQuery;
  final int currentPage;

  /// Ticket currently loaded into the right "Resolve" panel, or null when
  /// no row has been selected yet.
  final SupportSummaryResDm? selectedTicket;
  final SupportResolution? resolution;
  final DeviceStatus? oldDeviceStatus;

  /// Available replacement devices for the swap flow.
  final NetworkState<List<SwapTargetDeviceResDm>> swapTargets;

  /// Chosen replacement device (swap flow only), or null.
  final SwapTargetDeviceResDm? swapTarget;
  final String itNote;
  final NetworkState<void> resolving;

  SupportListState copyWith({
    NetworkState<List<SupportSummaryResDm>>? tickets,
    String? statusFilter,
    SupportType? typeFilter,
    bool clearTypeFilter = false,
    String? searchQuery,
    int? currentPage,
    SupportSummaryResDm? selectedTicket,
    bool clearSelection = false,
    SupportResolution? resolution,
    DeviceStatus? oldDeviceStatus,
    NetworkState<List<SwapTargetDeviceResDm>>? swapTargets,
    SwapTargetDeviceResDm? swapTarget,
    bool clearSwapTarget = false,
    String? itNote,
    NetworkState<void>? resolving,
  }) {
    return SupportListState(
      tickets: tickets ?? this.tickets,
      statusFilter: statusFilter ?? this.statusFilter,
      typeFilter: clearTypeFilter ? null : (typeFilter ?? this.typeFilter),
      searchQuery: searchQuery ?? this.searchQuery,
      currentPage: currentPage ?? this.currentPage,
      selectedTicket: clearSelection
          ? null
          : (selectedTicket ?? this.selectedTicket),
      resolution: resolution ?? this.resolution,
      oldDeviceStatus: oldDeviceStatus ?? this.oldDeviceStatus,
      swapTargets: swapTargets ?? this.swapTargets,
      swapTarget: clearSwapTarget ? null : (swapTarget ?? this.swapTarget),
      itNote: itNote ?? this.itNote,
      resolving: resolving ?? this.resolving,
    );
  }

  @override
  List<Object?> get props => [
        tickets,
        statusFilter,
        typeFilter,
        searchQuery,
        currentPage,
        selectedTicket,
        resolution,
        oldDeviceStatus,
        swapTargets,
        swapTarget,
        itNote,
        resolving,
      ];
}

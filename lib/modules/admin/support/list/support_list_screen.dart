import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../repositories/remote_repository/support/models/support_summary_res_dm.dart';
import '../../../../repositories/remote_repository/support/models/swap_target_device_res_dm.dart';
import '../../../../utilities/extensions/context_extensions.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../values/constants/app_constants.dart';
import '../../../../values/enumeration/statuses.dart';
import '../../../../widgets/widgets.dart';
import '../../inventory/inventory_status_x.dart';
import '../../shell/admin_shell.dart';
import '../support_status_x.dart';
import 'cubit/support_list_cubit.dart';

/// IT Admin Support Requests & Resolve screen (mockup A08): a filterable,
/// paginated table of support tickets on the left, with an inline "Resolve"
/// panel on the right for whichever ticket is selected, backed by
/// [SupportListCubit].
class SupportListScreen extends StatefulWidget {
  const SupportListScreen({super.key});

  @override
  State<SupportListScreen> createState() => _SupportListScreenState();
}

class _SupportListScreenState extends State<SupportListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SupportListCubit>().loadTickets();
  }

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: context.l10n.adminSupport,
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child: BlocListener<SupportListCubit, SupportListState>(
          listenWhen: (previous, current) =>
              previous.resolving != current.resolving,
          listener: (context, state) {
            if (state.resolving is Success<void>) {
              AppToast.success(context, context.l10n.supportResolvedToast);
            } else if (state.resolving case Error<void>(:final message)) {
              AppToast.error(context, message);
            }
          },
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 15, child: _SupportListColumn()),
              Gap(18),
              Expanded(flex: 10, child: _ResolvePanel()),
            ],
          ),
        ),
      ),
    );
  }
}

class _SupportListColumn extends StatelessWidget {
  const _SupportListColumn();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _StatusPillsRow(),
        const Gap(12),
        const _FiltersRow(),
        const Gap(16),
        Expanded(
          child: BlocBuilder<SupportListCubit, SupportListState>(
            builder: (context, state) {
              return NetworkStateView<List<SupportSummaryResDm>>(
                state: state.tickets,
                isEmpty: (data) => data.isEmpty,
                onData: (context, data) => _SupportTable(
                  allFiltered: context.read<SupportListCubit>().filteredTickets,
                  currentPage: state.currentPage,
                  selectedId: state.selectedTicket?.id,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _StatusPillsRow extends StatelessWidget {
  const _StatusPillsRow();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SupportListCubit, SupportListState>(
      builder: (context, state) {
        return FilterPillTabs(
          tabs: [
            PillTab(id: 'all', label: context.l10n.supportFilterAll),
            PillTab(id: 'open', label: context.l10n.supportFilterOpen),
            PillTab(
              id: 'inProgress',
              label: context.l10n.supportFilterInProgress,
            ),
            PillTab(id: 'resolved', label: context.l10n.supportFilterResolved),
          ],
          selectedId: state.statusFilter,
          onChanged: context.read<SupportListCubit>().setStatusFilter,
        );
      },
    );
  }
}

class _FiltersRow extends StatefulWidget {
  const _FiltersRow();

  @override
  State<_FiltersRow> createState() => _FiltersRowState();
}

class _FiltersRowState extends State<_FiltersRow> {
  final _typeChipKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SupportListCubit, SupportListState>(
      builder: (context, state) {
        final cubit = context.read<SupportListCubit>();
        return Wrap(
          spacing: 10,
          runSpacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            FilterDropdownChip(
              key: _typeChipKey,
              label: context.l10n.supportFilterType,
              valueLabel:
                  state.typeFilter?.label ?? context.l10n.supportFilterAll,
              onTap: () => _showTypeMenu(context, cubit),
            ),
            SizedBox(
              width: 260,
              child: AppSearchField(
                hintText: context.l10n.supportSearchHint,
                onChanged: cubit.setSearchQuery,
              ),
            ),
          ],
        );
      },
    );
  }

  RelativeRect _menuPosition(GlobalKey chipKey) {
    final chipBox = chipKey.currentContext!.findRenderObject()! as RenderBox;
    final overlayBox =
        Navigator.of(context).overlay!.context.findRenderObject()! as RenderBox;
    final topLeft = chipBox.localToGlobal(
      Offset(0, chipBox.size.height),
      ancestor: overlayBox,
    );
    final bottomRight = chipBox.localToGlobal(
      chipBox.size.bottomRight(Offset.zero),
      ancestor: overlayBox,
    );
    return RelativeRect.fromRect(
      Rect.fromPoints(topLeft, bottomRight),
      Offset.zero & overlayBox.size,
    );
  }

  void _showTypeMenu(BuildContext context, SupportListCubit cubit) {
    showMenu<SupportType?>(
      context: context,
      position: _menuPosition(_typeChipKey),
      items: [
        PopupMenuItem(value: null, child: Text(context.l10n.supportFilterAll)),
        for (final type in SupportType.values)
          PopupMenuItem(value: type, child: Text(type.label)),
      ],
    ).then((value) {
      if (context.mounted) cubit.setTypeFilter(value);
    });
  }
}

class _SupportTable extends StatelessWidget {
  const _SupportTable({
    required this.allFiltered,
    required this.currentPage,
    required this.selectedId,
  });

  final List<SupportSummaryResDm> allFiltered;
  final int currentPage;
  final String? selectedId;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SupportListCubit>();
    final start = (currentPage - 1) * kSupportListPageSize;
    final end = (start + kSupportListPageSize).clamp(0, allFiltered.length);
    final pageRows = start < allFiltered.length
        ? allFiltered.sublist(start, end)
        : <SupportSummaryResDm>[];

    return AppDataTable<SupportSummaryResDm>(
      isRowSelected: (row) => row.id == selectedId,
      columns: [
        TableColumn<SupportSummaryResDm>(
          header: context.l10n.supportColumnId,
          cellBuilder: (context, row) => Text(row.id),
        ),
        TableColumn<SupportSummaryResDm>(
          header: context.l10n.supportColumnDevice,
          flex: 2,
          cellBuilder: (context, row) => Text(row.deviceName),
        ),
        TableColumn<SupportSummaryResDm>(
          header: context.l10n.supportColumnType,
          cellBuilder: (context, row) => Text(row.type.label),
        ),
        TableColumn<SupportSummaryResDm>(
          header: context.l10n.columnStatus,
          cellBuilder: (context, row) => StatusPill(
            semantic: row.status.semantic,
            label: row.status.label,
            dense: true,
          ),
        ),
        TableColumn<SupportSummaryResDm>(
          header: context.l10n.columnActions,
          cellBuilder: (context, row) => PillActionButton(
            label: context.l10n.supportActionResolve,
            variant: row.status == SupportStatus.resolved
                ? AppButtonVariant.secondary
                : AppButtonVariant.primary,
            onPressed: () => cubit.selectTicket(row),
          ),
        ),
      ],
      rows: pageRows,
      pagination: TablePagination(
        currentPage: currentPage,
        totalItems: allFiltered.length,
        pageSize: kSupportListPageSize,
        onPageChanged: cubit.setPage,
      ),
    );
  }
}

class _ResolvePanel extends StatelessWidget {
  const _ResolvePanel();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SupportListCubit, SupportListState>(
      builder: (context, state) {
        final cubit = context.read<SupportListCubit>();
        final ticket = state.selectedTicket;

        return AppCard(
          padding: const EdgeInsets.all(20),
          child: ticket == null
              ? const _ResolvePlaceholder()
              : _ResolveForm(state: state, ticket: ticket, cubit: cubit),
        );
      },
    );
  }
}

class _ResolvePlaceholder extends StatelessWidget {
  const _ResolvePlaceholder();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(context.l10n.supportResolveTitle, style: context.appTextStyles.h3),
        const Gap(10),
        Text(
          context.l10n.supportResolvePlaceholder,
          style: context.appTextStyles.bodyMedium.copyWith(
            color: context.appColors.textSecondary,
          ),
        ),
      ],
    );
  }
}

class _ResolveForm extends StatefulWidget {
  const _ResolveForm({
    required this.state,
    required this.ticket,
    required this.cubit,
  });

  final SupportListState state;
  final SupportSummaryResDm ticket;
  final SupportListCubit cubit;

  @override
  State<_ResolveForm> createState() => _ResolveFormState();
}

class _ResolveFormState extends State<_ResolveForm> {
  final _swapChipKey = GlobalKey();
  final _statusChipKey = GlobalKey();

  SupportListState get state => widget.state;
  SupportSummaryResDm get ticket => widget.ticket;
  SupportListCubit get cubit => widget.cubit;

  @override
  Widget build(BuildContext context) {
    final resolution = state.resolution ?? SupportResolution.remoteResolved;
    final needsSwap = resolution.requiresSwapTarget;
    final canSave = !needsSwap || state.swapTarget != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                context.l10n.supportResolveTitleFor(
                  ticket.id,
                  ticket.deviceName,
                ),
                style: context.appTextStyles.h3,
              ),
            ),
            const Gap(10),
            StatusPill(
              semantic: ticket.status.semantic,
              label: ticket.status.label,
            ),
          ],
        ),
        const Gap(12),
        Text(
          '"${ticket.description}"',
          style: context.appTextStyles.bodyMedium.copyWith(
            color: context.appColors.textSecondary,
          ),
        ),
        const Gap(16),
        _FieldLabel(context.l10n.supportResolutionLabel),
        const Gap(8),
        _ResolutionChips(
          selected: state.resolution,
          onSelected: cubit.setResolution,
        ),
        // Swap flow: pick the replacement unit (required).
        if (needsSwap) ...[
          const Gap(16),
          _FieldLabel(context.l10n.supportSwapTargetLabel),
          const Gap(8),
          PickerField(
            key: _swapChipKey,
            label: context.l10n.supportSwapTargetLabel,
            valueText: state.swapTarget == null
                ? context.l10n.supportSwapTargetHint
                : '${state.swapTarget!.name} · ${state.swapTarget!.serial}',
            onTap: () => _showSwapMenu(context),
          ),
        ],
        // Old-device next status: only offered when the flow gives a choice
        // (remote/repaired → Available, marked lost → Lost are implied).
        if (resolution.allowsOldStatusChoice) ...[
          const Gap(16),
          _FieldLabel(context.l10n.supportOldStatusLabel),
          const Gap(8),
          PickerField(
            key: _statusChipKey,
            label: context.l10n.supportOldStatusLabel,
            valueText:
                (state.oldDeviceStatus ?? resolution.defaultOldDeviceStatus)
                    .label,
            onTap: () => _showStatusMenu(context, resolution),
          ),
        ] else ...[
          const Gap(16),
          InlineAlert(
            semantic: AppSemantic.info,
            dense: true,
            message: context.l10n.supportOldStatusImplied(
              resolution.defaultOldDeviceStatus.label,
            ),
          ),
        ],
        const Gap(14),
        AppTextField.multiline(
          label: context.l10n.supportItNoteLabel,
          onChanged: cubit.setItNote,
        ),
        const Gap(16),
        AppButton(
          label: context.l10n.supportSaveResolution,
          variant: AppButtonVariant.primary,
          expand: true,
          isLoading: state.resolving is Loading<void>,
          onPressed: canSave ? cubit.resolveSelected : null,
        ),
      ],
    );
  }

  RelativeRect _menuPosition(GlobalKey key) {
    final box = key.currentContext!.findRenderObject()! as RenderBox;
    final overlay =
        Navigator.of(context).overlay!.context.findRenderObject()! as RenderBox;
    final topLeft = box.localToGlobal(
      Offset(0, box.size.height),
      ancestor: overlay,
    );
    final bottomRight = box.localToGlobal(
      box.size.bottomRight(Offset.zero),
      ancestor: overlay,
    );
    return RelativeRect.fromRect(
      Rect.fromPoints(topLeft, bottomRight),
      Offset.zero & overlay.size,
    );
  }

  void _showSwapMenu(BuildContext context) {
    final devices = state.swapTargets.dataOrNull ?? const [];
    showMenu<SwapTargetDeviceResDm>(
      context: context,
      position: _menuPosition(_swapChipKey),
      items: [
        for (final device in devices)
          PopupMenuItem(
            value: device,
            child: Text('${device.name} · ${device.serial}'),
          ),
      ],
    ).then((value) {
      if (value != null && context.mounted) cubit.setSwapTarget(value);
    });
  }

  void _showStatusMenu(BuildContext context, SupportResolution resolution) {
    showMenu<DeviceStatus>(
      context: context,
      position: _menuPosition(_statusChipKey),
      items: [
        for (final status in resolution.oldDeviceStatusOptions)
          PopupMenuItem(value: status, child: Text(status.label)),
      ],
    ).then((value) {
      if (value != null && context.mounted) cubit.setOldDeviceStatus(value);
    });
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.appTextStyles.emphasisSmall.copyWith(
        color: context.appColors.textTertiary,
      ),
    );
  }
}

/// Inline wrapping selector for the four [SupportResolution] options
/// (mockup A08). Outlined chips that fill/tint when selected — a one-off
/// layout, so kept local rather than added to the shared library.
class _ResolutionChips extends StatelessWidget {
  const _ResolutionChips({required this.selected, required this.onSelected});

  final SupportResolution? selected;
  final ValueChanged<SupportResolution> onSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final resolution in SupportResolution.values)
          _ResolutionChip(
            label: resolution.label,
            selected: resolution == selected,
            onTap: () => onSelected(resolution),
          ),
      ],
    );
  }
}

class _ResolutionChip extends StatelessWidget {
  const _ResolutionChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? colors.primary : colors.surface,
          border: selected ? null : Border.all(color: colors.borderSubtle),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          label,
          style: context.appTextStyles.label.copyWith(
            fontSize: 11,
            color: selected ? Colors.white : colors.textTertiary,
          ),
        ),
      ),
    );
  }
}

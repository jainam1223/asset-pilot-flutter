import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../repositories/remote_repository/requests/models/request_detail_res_dm.dart';
import '../../../../repositories/remote_repository/requests/models/suggested_device_res_dm.dart';
import '../../../../utilities/extensions/context_extensions.dart';
import '../../../../utilities/navigation/app_routes.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../values/constants/app_constants.dart';
import '../../../../widgets/widgets.dart';
import '../../shell/admin_shell.dart';
import '../request_status_x.dart';
import 'cubit/request_detail_cubit.dart';

/// IT Admin Request Detail & Assign screen (mockup A03): request info,
/// AI-ranked suggested devices, a static booking-calendar panel, and
/// Assign/Reject actions, backed by [RequestDetailCubit].
class RequestDetailScreen extends StatefulWidget {
  const RequestDetailScreen({super.key});

  @override
  State<RequestDetailScreen> createState() => _RequestDetailScreenState();
}

class _RequestDetailScreenState extends State<RequestDetailScreen> {
  @override
  void initState() {
    super.initState();
    final cubit = context.read<RequestDetailCubit>();
    cubit.loadDetail();
    cubit.loadSuggestions();
  }

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: context.l10n.requestDetailTitle(
        context.read<RequestDetailCubit>().requestId,
      ),
      selectedNavId: 'requests',
      child: BlocConsumer<RequestDetailCubit, RequestDetailState>(
        listenWhen: (previous, current) => previous.submission != current.submission,
        listener: (context, state) {
          switch (state.submission) {
            case Success():
              AppToast.success(context, context.l10n.requestUpdatedSuccess);
              context.go(Routes.adminRequests.path);
            case Error(:final message):
              AppToast.error(context, message);
            case Idle() || Loading():
              break;
          }
        },
        builder: (context, state) {
          return NetworkStateView<RequestDetailResDm>(
            state: state.detail,
            onData: (context, detail) => Padding(
              padding: const EdgeInsets.all(AppConstants.screenPadding),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 280, child: _RequestInfoPanel(detail: detail)),
                  const Gap(18),
                  Expanded(child: _SuggestionsPanel(state: state)),
                  const Gap(18),
                  SizedBox(width: 320, child: _BookingCalendarPanel(detail: detail)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _RequestInfoPanel extends StatelessWidget {
  const _RequestInfoPanel({required this.detail});

  final RequestDetailResDm detail;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(context.l10n.requestInfoTitle, style: context.appTextStyles.h3),
          const Gap(14),
          Row(
            children: [
              AppAvatar(name: detail.employeeName),
              const Gap(11),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(detail.employeeName, style: context.appTextStyles.labelLarge),
                  Text(
                    detail.employeeDepartment,
                    style: context.appTextStyles.bodySmall,
                  ),
                ],
              ),
            ],
          ),
          const Gap(14),
          InfoRowsCard(
            rows: [
              InfoRow(
                label: context.l10n.requestFieldCategory,
                value: Text(detail.category),
              ),
              InfoRow(
                label: context.l10n.requestFieldPriority,
                value: PriorityTag(
                  semantic: detail.priority.semantic,
                  label: detail.priority.label,
                ),
              ),
              InfoRow(
                label: context.l10n.requestFieldStatus,
                value: StatusPill(
                  semantic: detail.status.semantic,
                  label: detail.status.label,
                  dense: true,
                ),
              ),
              InfoRow(
                label: context.l10n.requestFieldMgrApproval,
                value: Text(
                  detail.managerApproved
                      ? context.l10n.requestApproved
                      : context.l10n.requestPending,
                ),
              ),
            ],
          ),
          const Gap(14),
          Text(context.l10n.requestRequestedDates, style: context.appTextStyles.bodySmall),
          const Gap(5),
          Text(
            '${detail.requestedFrom} – ${detail.requestedTo}',
            style: context.appTextStyles.labelLarge,
          ),
          const Gap(14),
          Text(context.l10n.requestNote, style: context.appTextStyles.bodySmall),
          const Gap(5),
          Text(detail.note, style: context.appTextStyles.bodyMedium),
        ],
      ),
    );
  }
}

class _SuggestionsPanel extends StatelessWidget {
  const _SuggestionsPanel({required this.state});

  final RequestDetailState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RequestDetailCubit>();
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(context.l10n.requestSuggestedDevicesTitle, style: context.appTextStyles.h3),
          const Gap(6),
          Text(
            context.l10n.requestSuggestedDevicesSubtitle,
            style: context.appTextStyles.bodySmall,
          ),
          const Gap(14),
          Expanded(
            child: NetworkStateView<List<SuggestedDeviceResDm>>(
              state: state.suggestions,
              onData: (context, suggestions) => ListView.separated(
                itemCount: suggestions.length,
                separatorBuilder: (_, _) => const Gap(11),
                itemBuilder: (context, index) {
                  final suggestion = suggestions[index];
                  return SuggestionCard(
                    rank: suggestion.rank,
                    title: '${suggestion.name} · SN ${suggestion.serial}',
                    subtitle: suggestion.reason,
                    selectLabel: context.l10n.suggestionSelect,
                    recommended: suggestion.deviceId == state.selectedDeviceId,
                    onSelect: () => cubit.selectDevice(suggestion.deviceId),
                  );
                },
              ),
            ),
          ),
          const Gap(16),
          const Divider(),
          const Gap(14),
          Row(
            children: [
              Expanded(
                child: PickerField(
                  label: context.l10n.requestAssignedFrom,
                  valueText: state.assignedFrom,
                  onTap: () {},
                ),
              ),
              const Gap(12),
              Expanded(
                child: PickerField(
                  label: context.l10n.requestAssignedTo,
                  valueText: state.assignedTo,
                  onTap: () {},
                ),
              ),
              const Gap(12),
              AppSwitch(
                value: state.workFromHome,
                onChanged: cubit.toggleWorkFromHome,
                label: context.l10n.requestWfh,
              ),
            ],
          ),
          const Gap(16),
          Row(
            children: [
              Expanded(
                child: AppButton(
                  label: context.l10n.requestAssignDevice,
                  onPressed: state.selectedDeviceId == null
                      ? null
                      : (state.submission is Loading ? null : cubit.assign),
                  isLoading: state.submission is Loading,
                  expand: true,
                ),
              ),
              const Gap(10),
              AppButton(
                label: context.l10n.requestReject,
                variant: AppButtonVariant.secondary,
                onPressed: state.submission is Loading ? null : () => cubit.reject(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BookingCalendarPanel extends StatelessWidget {
  const _BookingCalendarPanel({required this.detail});

  final RequestDetailResDm detail;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(context.l10n.requestBookingCalendarTitle, style: context.appTextStyles.h3),
          const Gap(6),
          Text(
            context.l10n.requestBookingCalendarSubtitle,
            style: context.appTextStyles.bodySmall,
          ),
          const Gap(14),
          const _CalendarBar(month: 'Jul', fraction: 0.4),
          const Gap(9),
          const _CalendarBar(month: 'Aug', fraction: 1),
          const Gap(9),
          const _CalendarBar(month: 'Sep', fraction: 1),
          const Gap(9),
          const _CalendarBar(month: 'Oct', fraction: 1),
          const Gap(9),
          const _CalendarBar(month: 'Nov', fraction: 0.45, warning: true),
          const Gap(16),
          InlineAlert(
            semantic: AppSemantic.warning,
            message: context.l10n.requestBookingConflictWarning,
          ),
          const Gap(12),
          AppButton(
            label: context.l10n.requestNudgeConflictingRange,
            variant: AppButtonVariant.secondary,
            expand: true,
            // TODO(nudge): no conflict-resolution flow exists yet — stubbed.
            onPressed: () => AppToast.info(context, context.l10n.comingSoon),
          ),
        ],
      ),
    );
  }
}

class _CalendarBar extends StatelessWidget {
  const _CalendarBar({
    required this.month,
    required this.fraction,
    this.warning = false,
  });

  final String month;
  final double fraction;
  final bool warning;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 32, child: Text(month, style: context.appTextStyles.bodySmall)),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: LinearProgressIndicator(
              value: fraction,
              minHeight: 16,
              backgroundColor: warning
                  ? context.appColors.warningBg
                  : context.appColors.successBg,
              valueColor: AlwaysStoppedAnimation(context.appColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}

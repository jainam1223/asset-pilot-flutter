import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../repositories/remote_repository/common/models/request_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../utilities/network/network_state.dart';
import '../../../values/app_global/current_user.dart';
import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';
import '../requests/request_status_x.dart';
import 'cubit/pending_approvals_cubit.dart';

/// Manager's Pending Approvals list (mockup M01) — every request raised by
/// a direct report that is awaiting this manager's decision.
class PendingApprovalsScreen extends StatelessWidget {
  const PendingApprovalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Column(
        children: [
          BlocBuilder<PendingApprovalsCubit, PendingApprovalsState>(
            builder: (context, state) {
              final count = switch (state.approvals) {
                Success(:final data) => data.length,
                _ => 0,
              };
              return GradientHeader(
                greeting: context.l10n.managerGreeting(CurrentUser.name),
                title: context.l10n.pendingApprovalsTitle,
                trailing: _CountBadge(count: count),
              );
            },
          ),
          Expanded(
            child: BlocBuilder<PendingApprovalsCubit, PendingApprovalsState>(
              builder: (context, state) {
                return RefreshIndicator(
                  onRefresh: () =>
                      context.read<PendingApprovalsCubit>().fetchPendingApprovals(),
                  child: CustomScrollView(
                    slivers: [
                      switch (state.approvals) {
                        Idle() || Loading() => SliverSkeletonList(
                          itemBuilder: (_) => const ListItemCardSkeleton(),
                        ),
                        Error(:final message) => SliverFillRemaining(
                          hasScrollBody: false,
                          child: ErrorStateView(
                            title: context.l10n.somethingWentWrong,
                            message: message,
                            onRetry: () => context
                                .read<PendingApprovalsCubit>()
                                .fetchPendingApprovals(),
                          ),
                        ),
                        Success(:final data) => _ApprovalListSliver(
                          approvals: data,
                        ),
                      },
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CountBadge extends StatelessWidget {
  const _CountBadge({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: context.appColors.errorAccent,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        '$count',
        style: context.appTextStyles.h2.copyWith(color: Colors.white),
      ),
    );
  }
}

class _ApprovalListSliver extends StatelessWidget {
  const _ApprovalListSliver({required this.approvals});

  final List<RequestResDm> approvals;

  @override
  Widget build(BuildContext context) {
    if (approvals.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: EmptyStateView(
          icon: Icons.fact_check_outlined,
          title: context.l10n.pendingApprovalsEmptyTitle,
          message: context.l10n.pendingApprovalsEmptyMessage,
        ),
      );
    }
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
      sliver: SliverList.separated(
        itemCount: approvals.length,
        separatorBuilder: (_, _) => const SizedBox(height: 13),
        itemBuilder: (context, index) =>
            _ApprovalCard(approval: approvals[index]),
      ),
    );
  }
}

class _ApprovalCard extends StatelessWidget {
  const _ApprovalCard({required this.approval});

  final RequestResDm approval;

  static final _dateFormat = DateFormat('dd MMM yyyy');

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PendingApprovalsCubit>();
    final employeeName = approval.requester?.name ?? '';
    final priority = requestPriorityFromWire(approval.priority);
    final requestedFrom = approval.requestedFrom;
    final requestedTo = approval.requestedTo;
    return RequestCard(
      avatarName: employeeName,
      title: employeeName,
      statusBadge: PriorityTag(
        semantic: priority.semantic,
        label: priority.label,
      ),
      metaLine: requestedFrom != null && requestedTo != null
          ? '${_dateFormat.format(requestedFrom)} – '
              '${_dateFormat.format(requestedTo)}'
          : '',
      note: approval.note,
      actions: [
        AppButton(
          label: context.l10n.approvalActionReject,
          variant: AppButtonVariant.destructive,
          size: AppButtonSize.small,
          onPressed: () async {
            final ok = await cubit.decide(
              requestId: approval.id,
              decision: MgrApprovalStatus.rejected,
            );
            if (context.mounted && ok) {
              AppToast.success(context, context.l10n.approvalRejectedToast);
              cubit.fetchPendingApprovals();
            }
          },
        ),
        AppButton(
          label: context.l10n.approvalActionApprove,
          variant: AppButtonVariant.success,
          size: AppButtonSize.small,
          onPressed: () async {
            final ok = await cubit.decide(
              requestId: approval.id,
              decision: MgrApprovalStatus.approved,
            );
            if (context.mounted && ok) {
              AppToast.success(context, context.l10n.approvalApprovedToast);
              cubit.fetchPendingApprovals();
            }
          },
        ),
      ],
      onTap: () => context.push(
        Routes.approvalDetail.path.replaceFirst(':id', approval.id),
        extra: approval,
      ),
    );
  }
}

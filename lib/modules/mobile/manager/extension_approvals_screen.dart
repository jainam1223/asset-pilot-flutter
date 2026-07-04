import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../repositories/remote_repository/extension_requests/models/extension_request_summary_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/network/network_state.dart';
import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';
import 'cubit/manager_extensions_cubit.dart';

final _extnDateFormat = DateFormat('dd MMM yyyy');

/// Manager's Extension Approvals list (mockup M03) — device extension
/// requests raised by direct reports, awaiting this manager's decision.
class ExtensionApprovalsScreen extends StatelessWidget {
  const ExtensionApprovalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: context.appColors.scaffoldAlt,
        appBar: AppBar(
          backgroundColor: context.appColors.surface,
          elevation: 0,
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            context.l10n.extensionApprovalsTitle,
            style: context.appTextStyles.h2,
          ),
        ),
        body: BlocBuilder<ManagerExtensionsCubit, ManagerExtensionsState>(
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () => context
                  .read<ManagerExtensionsCubit>()
                  .fetchExtensionApprovals(),
              child: CustomScrollView(
                slivers: [
                  switch (state.extensions) {
                    Idle() || Loading() => SliverSkeletonList(
                      itemBuilder: (_) => const ListItemCardSkeleton(),
                    ),
                    Error(:final message) => SliverFillRemaining(
                      hasScrollBody: false,
                      child: ErrorStateView(
                        title: context.l10n.somethingWentWrong,
                        message: message,
                        onRetry: () => context
                            .read<ManagerExtensionsCubit>()
                            .fetchExtensionApprovals(),
                      ),
                    ),
                    Success(:final data) => _ExtensionListSliver(
                      extensions: data,
                    ),
                  },
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ExtensionListSliver extends StatelessWidget {
  const _ExtensionListSliver({required this.extensions});

  final List<ExtensionRequestSummaryResDm> extensions;

  @override
  Widget build(BuildContext context) {
    if (extensions.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: EmptyStateView(
          icon: Icons.event_repeat_outlined,
          title: context.l10n.extensionApprovalsEmptyTitle,
          message: context.l10n.extensionApprovalsEmptyMessage,
        ),
      );
    }
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
      sliver: SliverList.separated(
        itemCount: extensions.length,
        separatorBuilder: (_, _) => const SizedBox(height: 13),
        itemBuilder: (context, index) =>
            _ExtensionCard(extension: extensions[index]),
      ),
    );
  }
}

class _ExtensionCard extends StatelessWidget {
  const _ExtensionCard({required this.extension});

  final ExtensionRequestSummaryResDm extension;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ManagerExtensionsCubit>();
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AppAvatar(name: extension.employeeName, size: AppAvatarSize.sm),
              const SizedBox(width: 11),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      extension.employeeName,
                      style: context.appTextStyles.labelLarge.copyWith(
                        color: context.appColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      extension.deviceName,
                      style: context.appTextStyles.bodyXSmall.copyWith(
                        color: context.appColors.textTertiary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: context.appColors.scaffoldLight,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Text(
                  _extnDateFormat.format(extension.currentToDate?.toLocal() ?? DateTime.now()),
                  style: context.appTextStyles.emphasisMedium.copyWith(
                    color: context.appColors.textSecondary,
                  ),
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.arrow_forward,
                  size: 14,
                  color: context.appColors.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  _extnDateFormat.format(extension.extendToDate?.toLocal() ?? DateTime.now()),
                  style: context.appTextStyles.emphasisMedium.copyWith(
                    color: context.appColors.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: AppButton(
                  label: context.l10n.approvalActionReject,
                  variant: AppButtonVariant.destructive,
                  size: AppButtonSize.small,
                  onPressed: () async {
                    final ok = await cubit.decide(
                      extensionId: extension.id,
                      decision: ExtensionStatus.rejected,
                    );
                    if (context.mounted && ok) {
                      AppToast.success(
                        context,
                        context.l10n.extensionRejectedToast,
                      );
                    }
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: AppButton(
                  label: context.l10n.approvalActionApprove,
                  variant: AppButtonVariant.success,
                  size: AppButtonSize.small,
                  onPressed: () async {
                    final ok = await cubit.decide(
                      extensionId: extension.id,
                      decision: ExtensionStatus.approved,
                    );
                    if (context.mounted && ok) {
                      AppToast.success(
                        context,
                        context.l10n.extensionApprovedToast,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

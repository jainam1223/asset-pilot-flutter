import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../repositories/remote_repository/common/models/request_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../values/app_theme/app_colors.dart';
import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';
import 'request_status_x.dart';

/// Request Detail screen (mockup E07 detail) for a single request raised
/// by the signed-in employee, fetched from `GET /me/requests/{id}`.
class RequestDetailScreen extends StatelessWidget {
  const RequestDetailScreen({super.key, required this.data});

  final RequestResDm data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.scaffoldAlt,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: _DetailContent(request: data),
      ),
    );
  }
}

class _DetailContent extends StatelessWidget {
  const _DetailContent({required this.request});

  final RequestResDm request;

  static final _dateFormat = DateFormat('dd MMM yyyy');

  @override
  Widget build(BuildContext context) {
    final status = requestStatusFromWire(request.status);
    final priority = requestPriorityFromWire(request.priority);
    final mgrApproval = mgrApprovalStatusFromWire(request.mgrApprovalStatus);
    final from = request.requestedFrom;
    final to = request.requestedTo;

    return Column(
      children: [
        _DetailHeader(request: request, status: status, priority: priority),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            children: [
              InfoRowsCard(
                rows: [
                  InfoRow(
                    label: context.l10n.requestDetailRequested,
                    value: Text(
                      from != null && to != null
                          ? '${_dateFormat.format(from)} – '
                                '${_dateFormat.format(to)}'
                          : '—',
                      style: context.appTextStyles.labelXLarge,
                    ),
                  ),
                  InfoRow(
                    label: context.l10n.requestDetailManagerApproval,
                    value: request.requiresMgrApproval
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                mgrApproval == MgrApprovalStatus.approved
                                    ? Icons.check
                                    : mgrApproval == MgrApprovalStatus.rejected
                                    ? Icons.close
                                    : Icons.hourglass_empty,
                                size: 16,
                                color: mgrApproval.semanticColor(context),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                mgrApproval.label,
                                style: context.appTextStyles.labelXLarge
                                    .copyWith(
                                      color: mgrApproval.semanticColor(context),
                                    ),
                              ),
                            ],
                          )
                        : Text(
                            mgrApproval.label,
                            style: context.appTextStyles.labelXLarge,
                          ),
                  ),
                  InfoRow(
                    label: context.l10n.requestDetailAssignedItem,
                    value: Text(
                      request.assignedItem?.name ??
                          context.l10n.requestDetailAwaitingIt,
                      style: context.appTextStyles.labelXLarge.copyWith(
                        color: request.assignedItem == null
                            ? context.appColors.textTertiary
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
              if (request.managerDecisionNote != null) ...[
                const SizedBox(height: 16),
                _NoteCard(
                  label: context.l10n.requestDetailManagerNote,
                  note: request.managerDecisionNote!,
                ),
              ],
              if (request.note != null) ...[
                const SizedBox(height: 16),
                _NoteCard(
                  label: context.l10n.requestDetailYourNote,
                  note: request.note!,
                ),
              ],
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: AppButton(
            label: context.l10n.requestDetailCancelRequest,
            variant: AppButtonVariant.destructive,
            expand: true,
            onPressed:
                status == RequestStatus.rejected ||
                    status == RequestStatus.cancelled ||
                    status == RequestStatus.completed
                ? null
                : () => {},
          ),
        ),
      ],
    );
  }
}

class _DetailHeader extends StatelessWidget {
  const _DetailHeader({
    required this.request,
    required this.status,
    required this.priority,
  });

  final RequestResDm request;
  final RequestStatus status;
  final RequestPriority priority;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        20,
        MediaQuery.paddingOf(context).top + 12,
        20,
        20,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.5, -0.87),
          end: Alignment(0.5, 0.87),
          colors: [AppColors.primary, AppColors.primaryDark],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AppIconButton(
                icon: Icons.arrow_back,
                variant: AppButtonVariant.primary,
                onPressed: () => context.pop(),
              ),
              const SizedBox(width: 12),
              Flexible(
                child: Text(
                  request.id,
                  style: context.appTextStyles.labelXLarge.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  request.category?.name ?? '',
                  style: context.appTextStyles.h1.copyWith(color: Colors.white),
                ),
              ),
              StatusPill(semantic: status.semantic, label: status.label),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              PriorityTag(semantic: priority.semantic, label: priority.label),
              if (request.isWfh) ...[
                const SizedBox(width: 8),
                PriorityTag(
                  semantic: AppSemantic.neutral,
                  label: context.l10n.requestDetailWfhTag,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

class _NoteCard extends StatelessWidget {
  const _NoteCard({required this.label, required this.note});

  final String label;
  final String note;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: context.appTextStyles.label.copyWith(
              color: context.appColors.textTertiary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            note,
            style: context.appTextStyles.bodyLarge.copyWith(
              color: context.appColors.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

extension _MgrApprovalSemanticColor on MgrApprovalStatus {
  Color semanticColor(BuildContext context) => switch (this) {
    MgrApprovalStatus.approved => context.appColors.successFg,
    MgrApprovalStatus.rejected => context.appColors.errorFg,
    MgrApprovalStatus.pending => context.appColors.warningFg,
    MgrApprovalStatus.notRequired => context.appColors.textTertiary,
  };
}

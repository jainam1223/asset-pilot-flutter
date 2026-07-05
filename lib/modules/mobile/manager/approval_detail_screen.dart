import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../repositories/remote_repository/common/models/request_res_dm.dart';
import '../../../repositories/remote_repository/manager/manager_repository.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/api_utilities/error_manager.dart';
import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';
import '../requests/request_status_x.dart';

/// Approval Detail screen (mockup M02) — single request raised by a direct
/// report, with an approve/reject decision and an optional decision note.
class ApprovalDetailScreen extends StatefulWidget {
  const ApprovalDetailScreen({super.key, required this.data});

  final RequestResDm data;

  @override
  State<ApprovalDetailScreen> createState() => _ApprovalDetailScreenState();
}

class _ApprovalDetailScreenState extends State<ApprovalDetailScreen> {
  String _decisionNote = '';
  bool _submitting = false;

  static final _dateFormat = DateFormat('dd MMM yyyy');

  Future<void> _decide(MgrApprovalStatus decision) async {
    setState(() => _submitting = true);
    final result = await ManagerRepository.instance.decideApproval(
      requestId: widget.data.id,
      decision: decision,
      note: _decisionNote.isEmpty ? null : _decisionNote,
    );
    if (!mounted) return;
    setState(() => _submitting = false);
    result.when(
      success: (_) {
        AppToast.success(
          context,
          decision == MgrApprovalStatus.approved
              ? context.l10n.approvalApprovedToast
              : context.l10n.approvalRejectedToast,
        );
        // Pop `true` so the approvals list refreshes on return.
        context.pop(true);
      },
      failure: (error) {
        errorManager.handle(error);
        AppToast.error(context, error.message);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final approval = widget.data;
    final employeeName = approval.requester?.name ?? '';
    final categoryName = approval.category?.name ?? '';
    final priority = requestPriorityFromWire(approval.priority);
    final requestedFrom = approval.requestedFrom;
    final requestedTo = approval.requestedTo;
    final note = approval.note;
    return Scaffold(
      backgroundColor: context.appColors.scaffoldAlt,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Column(
          children: [
            const _DetailHeader(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
                children: [
                  RequestCard(
                    avatarName: employeeName,
                    title: employeeName,
                    metaLine: context.l10n.approvalDetailRequestsCategory(
                      categoryName,
                    ),
                  ),
                  const SizedBox(height: 14),
                  InfoRowsCard(
                    rows: [
                      InfoRow(
                        label: context.l10n.approvalDetailPriority,
                        value: PriorityTag(
                          semantic: priority.semantic,
                          label: priority.label,
                        ),
                      ),
                      InfoRow(
                        label: context.l10n.approvalDetailDates,
                        value: Text(
                          requestedFrom != null && requestedTo != null
                              ? '${_dateFormat.format(requestedFrom)} – '
                                  '${_dateFormat.format(requestedTo)}'
                              : '',
                          style: context.appTextStyles.labelXLarge,
                        ),
                      ),
                      InfoRow(
                        label: context.l10n.approvalDetailCategory,
                        value: Text(
                          categoryName,
                          style: context.appTextStyles.labelXLarge,
                        ),
                      ),
                    ],
                  ),
                  if (note != null && note.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    _NoteCard(
                      label: context.l10n.approvalDetailEmployeeNote,
                      note: note,
                    ),
                  ],
                  const SizedBox(height: 16),
                  AppTextField.multiline(
                    label: context.l10n.approvalDetailDecisionNoteLabel,
                    hintText: context.l10n.approvalDetailDecisionNoteHint,
                    onChanged: (value) => _decisionNote = value,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                children: [
                  Expanded(
                    child: AppButton(
                      label: context.l10n.approvalActionReject,
                      variant: AppButtonVariant.destructive,
                      isLoading: _submitting,
                      onPressed: _submitting
                          ? null
                          : () => _decide(MgrApprovalStatus.rejected),
                    ),
                  ),
                  const SizedBox(width: 11),
                  Expanded(
                    flex: 2,
                    child: AppButton(
                      label: context.l10n.approvalActionApprove,
                      variant: AppButtonVariant.success,
                      isLoading: _submitting,
                      onPressed: _submitting
                          ? null
                          : () => _decide(MgrApprovalStatus.approved),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailHeader extends StatelessWidget {
  const _DetailHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        20,
        MediaQuery.paddingOf(context).top + 12,
        20,
        16,
      ),
      color: context.appColors.surface,
      child: Row(
        children: [
          AppIconButton(
            icon: Icons.arrow_back,
            variant: AppButtonVariant.secondary,
            onPressed: () => context.pop(),
          ),
          const SizedBox(width: 14),
          Text(
            context.l10n.approvalDetailTitle,
            style: context.appTextStyles.h2,
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

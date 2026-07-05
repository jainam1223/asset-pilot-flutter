import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../repositories/remote_repository/common/models/handover_request_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/network/network_state.dart';
import '../../../values/app_global/current_user.dart';
import '../../../widgets/widgets.dart';
import 'cubit/handover_list_cubit.dart';
import 'handover_status_x.dart';

/// My Handovers (mockup E14) — every handover request the signed-in
/// employee is party to, either as the borrower who asked for a device or
/// as the owner deciding on someone else's request.
///
/// Actions are gated by which side of the request the current user is on:
/// only the owner can accept/reject/complete, only the borrower can cancel.
class HandoverDetailsScreen extends StatelessWidget {
  const HandoverDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HandoverDetailsView();
  }
}

class _HandoverDetailsView extends StatelessWidget {
  const _HandoverDetailsView();

  static final _dateFormat = DateFormat('dd MMM yyyy');

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HandoverListCubit>();
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Column(
        children: [
          GradientHeader(
            greeting: context.l10n.myHandoversGreeting(
              CurrentUser.name.split(' ').first,
            ),
            title: context.l10n.myHandoversTitle,
            trailing: const NotificationBell(),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocBuilder<HandoverListCubit, HandoverListState>(
              builder: (context, state) => _Segment(
                asBorrower: state.asBorrower,
                onChanged: cubit.setAsBorrower,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Expanded(
            child: BlocBuilder<HandoverListCubit, HandoverListState>(
              builder: (context, state) {
                return RefreshIndicator(
                  onRefresh: cubit.fetch,
                  child: switch (state.requests) {
                    Idle() || Loading() => ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      itemCount: 4,
                      itemBuilder: (_, _) => const Padding(
                        padding: EdgeInsets.only(bottom: 14),
                        child: ListItemCardSkeleton(),
                      ),
                    ),
                    Error(:final message) => ErrorStateView(
                      title: context.l10n.somethingWentWrong,
                      message: message,
                      onRetry: cubit.fetch,
                    ),
                    Success(:final data) => data.isEmpty
                        ? EmptyStateView(
                            icon: Icons.swap_horiz,
                            title: context.l10n.noHandoversTitle,
                            message: context.l10n.noHandoversAssigned,
                          )
                        : ListView.builder(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                            ),
                            itemCount: data.length,
                            itemBuilder: (_, index) => Padding(
                              padding: const EdgeInsets.only(bottom: 14),
                              child: _HandoverCard(
                                request: data[index],
                                asBorrower: state.asBorrower,
                                dateFormat: _dateFormat,
                              ),
                            ),
                          ),
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Segment extends StatelessWidget {
  const _Segment({required this.asBorrower, required this.onChanged});

  final bool asBorrower;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: const Color(0xffE9E6F5),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Expanded(
            child: _SegmentTab(
              label: context.l10n.myHandoversAsBorrower,
              selected: asBorrower,
              onTap: () => onChanged(true),
            ),
          ),
          Expanded(
            child: _SegmentTab(
              label: context.l10n.myHandoversAsOwner,
              selected: !asBorrower,
              onTap: () => onChanged(false),
            ),
          ),
        ],
      ),
    );
  }
}

class _SegmentTab extends StatelessWidget {
  const _SegmentTab({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
          color: selected ? const Color(0xff6C4CF3) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            color: selected ? Colors.white : Colors.grey[700],
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _HandoverCard extends StatefulWidget {
  const _HandoverCard({
    required this.request,
    required this.asBorrower,
    required this.dateFormat,
  });

  final HandoverRequestResDm request;
  final bool asBorrower;
  final DateFormat dateFormat;

  @override
  State<_HandoverCard> createState() => _HandoverCardState();
}

class _HandoverCardState extends State<_HandoverCard> {
  bool _submitting = false;

  // The list is filtered server-side by role (?role=owner|borrower), so the
  // active tab is the source of truth for which side the current user is on —
  // don't re-derive it from an id compare, whose owner/borrower rows may not
  // carry an id that matches CurrentUser.
  bool get _isOwner => !widget.asBorrower;
  bool get _isBorrower => widget.asBorrower;

  Future<void> _run(
    Future<bool> Function(String id) action,
    String successMessage,
  ) async {
    setState(() => _submitting = true);
    final ok = await action(widget.request.id);
    if (!mounted) return;
    setState(() => _submitting = false);
    if (ok) {
      AppToast.success(context, successMessage);
      context.read<HandoverListCubit>().fetch();
    }
  }

  @override
  Widget build(BuildContext context) {
    final request = widget.request;
    final status = request.status;
    final cubit = context.read<HandoverListCubit>();
    final requestedAt = request.requestedAt;
    final subtitle = requestedAt == null
        ? null
        : request.requestedDurationHours != null
            ? context.l10n.handoverRequestedMeta(
                '${request.requestedDurationHours}',
                widget.dateFormat.format(requestedAt.toLocal()),
              )
            : context.l10n.handoverRequestedMetaNoDuration(
                widget.dateFormat.format(requestedAt.toLocal()),
              );

    final actions = <Widget>[];
    if (status.name == 'requested' && _isOwner) {
      actions.addAll([
        AppButton(
          label: context.l10n.handoverActionReject,
          variant: AppButtonVariant.destructive,
          size: AppButtonSize.small,
          isLoading: _submitting,
          onPressed: _submitting
              ? null
              : () => _run(cubit.reject, context.l10n.handoverRejectedToast),
        ),
        AppButton(
          label: context.l10n.handoverActionAccept,
          variant: AppButtonVariant.success,
          size: AppButtonSize.small,
          isLoading: _submitting,
          onPressed: _submitting
              ? null
              : () => _run(cubit.accept, context.l10n.handoverAcceptedToast),
        ),
      ]);
    } else if (status.name == 'requested' && _isBorrower) {
      actions.add(
        AppButton(
          label: context.l10n.handoverActionCancel,
          variant: AppButtonVariant.destructive,
          size: AppButtonSize.small,
          isLoading: _submitting,
          onPressed: _submitting
              ? null
              : () => _run(cubit.cancel, context.l10n.handoverCancelledToast),
        ),
      );
    } else if (status.name == 'accepted' && _isOwner) {
      actions.add(
        AppButton(
          label: context.l10n.handoverActionComplete,
          variant: AppButtonVariant.success,
          size: AppButtonSize.small,
          isLoading: _submitting,
          onPressed: _submitting
              ? null
              : () =>
                    _run(cubit.complete, context.l10n.handoverCompletedToast),
        ),
      );
    }

    return RequestCard(
      title: request.item?.name ?? '',
      statusBadge: StatusPill(semantic: status.semantic, label: status.label),
      metaLine: subtitle,
      note: request.note,
      actions: actions.isEmpty ? null : actions,
    );
  }
}

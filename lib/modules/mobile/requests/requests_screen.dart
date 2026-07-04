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
import '../../../widgets/widgets.dart';
import 'cubit/requests_cubit.dart';
import 'request_status_x.dart';

/// Employee's request list (mockup E07 list) — every `request` row raised
/// by the signed-in employee, fetched from `GET /me/requests`.
class RequestsScreen extends StatelessWidget {
  const RequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Column(
        children: [
          GradientHeader(
            greeting: context.l10n.myDevicesGreeting(
              CurrentUser.name.split(' ').first,
            ),
            title: context.l10n.myRequestsTitle,
            trailing: const NotificationBell(),
          ),
          Expanded(
            child: BlocBuilder<RequestsCubit, RequestsState>(
              builder: (context, state) {
                return RefreshIndicator(
                  onRefresh: () =>
                      context.read<RequestsCubit>().fetchMyRequests(),
                  child: CustomScrollView(
                    slivers: [
                      switch (state.requests) {
                        Idle() || Loading() => SliverSkeletonList(
                          itemBuilder: (_) => const ListItemCardSkeleton(),
                        ),
                        Error(:final message) => SliverFillRemaining(
                          hasScrollBody: false,
                          child: ErrorStateView(
                            title: context.l10n.somethingWentWrong,
                            message: message,
                            onRetry: () =>
                                context.read<RequestsCubit>().fetchMyRequests(),
                          ),
                        ),
                        Success(:final data) => _RequestListSliver(
                          requests: data,
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

class _RequestListSliver extends StatelessWidget {
  const _RequestListSliver({required this.requests});

  final List<RequestResDm> requests;

  @override
  Widget build(BuildContext context) {
    if (requests.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: EmptyStateView(
          icon: Icons.list_alt_outlined,
          title: context.l10n.noRequestsTitle,
          message: context.l10n.noRequestsYet,
        ),
      );
    }
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
      sliver: SliverList.separated(
        itemCount: requests.length,
        separatorBuilder: (_, _) => const SizedBox(height: 13),
        itemBuilder: (context, index) => _RequestCard(request: requests[index]),
      ),
    );
  }
}

class _RequestCard extends StatelessWidget {
  const _RequestCard({required this.request});

  final RequestResDm request;

  static final _dateFormat = DateFormat('dd MMM yyyy');

  @override
  Widget build(BuildContext context) {
    final status = requestStatusFromWire(request.status);
    final priority = requestPriorityFromWire(request.priority);
    final from = request.requestedFrom;
    final to = request.requestedTo;

    return AppCard(
      onTap: () => context.push(
        Routes.requestDetail.path.replaceFirst(':id', request.id),
        extra: request,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  request.category?.name ?? '',
                  style: context.appTextStyles.h2,
                ),
              ),
              const SizedBox(width: 8),
              StatusPill(semantic: status.semantic, label: status.label),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              PriorityTag(semantic: priority.semantic, label: priority.label),
              const SizedBox(width: 10),
              if (from != null && to != null)
                Text(
                  '${_dateFormat.format(from)} – ${_dateFormat.format(to)}',
                  style: context.appTextStyles.bodyMedium.copyWith(
                    color: context.appColors.textTertiary,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

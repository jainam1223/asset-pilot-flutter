import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../repositories/remote_repository/inventory/models/inventory_detail_res_dm.dart';
import '../../../../utilities/extensions/context_extensions.dart';
import '../../../../utilities/navigation/app_routes.dart';
import '../../../../values/constants/app_constants.dart';
import '../../../../values/enumeration/statuses.dart';
import '../../../../widgets/widgets.dart';
import '../../shell/admin_shell.dart';
import '../inventory_status_x.dart';
import 'cubit/inventory_detail_cubit.dart';

/// IT Admin Device Detail screen (mockup A05): device info, current
/// assignment, open support tickets, and active handover, backed by
/// [InventoryDetailCubit].
class InventoryDetailScreen extends StatefulWidget {
  const InventoryDetailScreen({super.key});

  @override
  State<InventoryDetailScreen> createState() => _InventoryDetailScreenState();
}

class _InventoryDetailScreenState extends State<InventoryDetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<InventoryDetailCubit>().loadDetail();
  }

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: context.l10n.adminInventory,
      child: BlocBuilder<InventoryDetailCubit, InventoryDetailState>(
        builder: (context, state) {
          return NetworkStateView<InventoryDetailResDm>(
            state: state.detail,
            onData: (context, detail) => Padding(
              padding: const EdgeInsets.all(AppConstants.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _HeaderBar(detail: detail),
                  const Gap(18),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: _DeviceInfoCard(detail: detail)),
                      const Gap(18),
                      Expanded(child: _CurrentAssignmentCard(detail: detail)),
                    ],
                  ),
                  const Gap(18),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: _OpenTicketsCard(detail: detail)),
                      const Gap(18),
                      Expanded(child: _ActiveHandoverCard(detail: detail)),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _HeaderBar extends StatelessWidget {
  const _HeaderBar({required this.detail});

  final InventoryDetailResDm detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(detail.name, style: context.appTextStyles.h2),
        const Gap(12),
        StatusPill(
          semantic: detail.status.semantic,
          label: detail.status.label,
        ),
        const Spacer(),
        AppButton(
          label: context.l10n.inventoryChangeStatus,
          variant: AppButtonVariant.secondary,
          size: AppButtonSize.medium,
          // TODO: wire to real Change Status flow when backend + design
          // are ready.
          onPressed: () => AppToast.info(context, context.l10n.comingSoon),
        ),
        const Gap(10),
        AppButton(
          label: context.l10n.inventoryViewTimeline,
          size: AppButtonSize.medium,
          onPressed: () => context.go(
            Routes.adminInventoryTimeline.path.replaceFirst(
              ':id',
              Uri.encodeComponent(detail.id),
            ),
            extra: detail.name,
          ),
        ),
        const Gap(10),
        AppButton(
          label: context.l10n.inventoryProcessReturn,
          variant: AppButtonVariant.secondary,
          size: AppButtonSize.medium,
          // TODO: wire to real Process Return flow when backend + design
          // are ready.
          onPressed: () => AppToast.info(context, context.l10n.comingSoon),
        ),
      ],
    );
  }
}

class _DeviceInfoCard extends StatelessWidget {
  const _DeviceInfoCard({required this.detail});

  final InventoryDetailResDm detail;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.inventoryDeviceInfoTitle,
            style: context.appTextStyles.h3,
          ),
          const Gap(14),
          InfoRowsCard(
            rows: [
              InfoRow(
                label: context.l10n.inventoryFieldSerial,
                value: Text(detail.serial),
              ),
              InfoRow(
                label: context.l10n.inventoryFieldCategory,
                value: Text(detail.category),
              ),
              InfoRow(
                label: context.l10n.inventoryFieldOwnerType,
                value: Text(
                  detail.ownerType == OwnerType.client
                      ? context.l10n.inventoryOwnerTypeClient(detail.clientName)
                      : detail.ownerType.label,
                ),
              ),
              InfoRow(
                label: context.l10n.inventoryFieldCurrentOwner,
                value: Text(
                  detail.currentOwnerName.isEmpty
                      ? context.l10n.inventoryUnassignedOwner
                      : detail.currentOwnerName,
                ),
              ),
              InfoRow(
                label: context.l10n.inventoryFieldPurchaseDate,
                value: Text(detail.purchaseDate?.toLocal().toString() ?? '—'),
              ),
              InfoRow(
                label: context.l10n.inventoryFieldQrToken,
                value: Text(detail.qrToken),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CurrentAssignmentCard extends StatelessWidget {
  const _CurrentAssignmentCard({required this.detail});

  final InventoryDetailResDm detail;

  @override
  Widget build(BuildContext context) {
    final assignment = detail.currentAssignment;
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.inventoryCurrentAssignmentTitle,
            style: context.appTextStyles.h3,
          ),
          const Gap(14),
          if (assignment == null)
            Text(
              context.l10n.inventoryNoAssignment,
              style: context.appTextStyles.bodySmall,
            )
          else
            InfoRowsCard(
              rows: [
                InfoRow(
                  label: context.l10n.inventoryFieldRequest,
                  value: Text(assignment.requestId),
                ),
                InfoRow(
                  label: context.l10n.inventoryFieldRequester,
                  value: Text(assignment.requesterName),
                ),
                InfoRow(
                  label: context.l10n.inventoryFieldDates,
                  value: Text(
                    '${assignment.assignedFrom} – ${assignment.assignedTo}',
                  ),
                ),
                InfoRow(
                  label: context.l10n.inventoryFieldWfh,
                  value: Text(
                    assignment.workFromHome
                        ? context.l10n.inventoryYes
                        : context.l10n.inventoryNo,
                  ),
                ),
                InfoRow(
                  label: context.l10n.inventoryFieldShipTracking,
                  value: Text(assignment.shipTracking),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class _OpenTicketsCard extends StatelessWidget {
  const _OpenTicketsCard({required this.detail});

  final InventoryDetailResDm detail;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.inventoryOpenTicketsTitle,
            style: context.appTextStyles.h3,
          ),
          const Gap(14),
          if (detail.openTickets.isEmpty)
            Text(
              context.l10n.inventoryNoOpenTickets,
              style: context.appTextStyles.bodySmall,
            )
          else
            Column(
              children: [
                for (final ticket in detail.openTickets)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ticket.description,
                                style: context.appTextStyles.labelLarge,
                              ),
                              if (ticket.filedAt != null)
                                Text(
                                  context.l10n.inventoryTicketFiledOn(
                                    ticket.filedAt!.toLocal().toString(),
                                  ),
                                  style: context.appTextStyles.bodySmall,
                                ),
                            ],
                          ),
                        ),
                        StatusPill(
                          semantic: ticket.status.semantic,
                          label: ticket.status.label,
                          dense: true,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}

class _ActiveHandoverCard extends StatelessWidget {
  const _ActiveHandoverCard({required this.detail});

  final InventoryDetailResDm detail;

  @override
  Widget build(BuildContext context) {
    final handover = detail.activeHandover;
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.inventoryActiveHandoverTitle,
            style: context.appTextStyles.h3,
          ),
          const Gap(14),
          if (handover == null)
            Text(
              context.l10n.inventoryNoActiveHandover,
              style: context.appTextStyles.bodySmall,
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.inventoryHandoverBorrower(
                          handover.borrowerName,
                        ),
                        style: context.appTextStyles.labelLarge,
                      ),
                      if (handover.requestedDurationHours != null)
                        Text(
                          '${handover.requestedDurationHours} h',
                          style: context.appTextStyles.bodySmall,
                        ),
                    ],
                  ),
                ),
                StatusPill(
                  semantic: handover.status.semantic,
                  label: handover.status.label,
                  dense: true,
                ),
              ],
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../../repositories/remote_repository/inventory/models/device_timeline_event_res_dm.dart';
import '../../../../utilities/extensions/context_extensions.dart';
import '../../../../values/constants/app_constants.dart';
import '../../../../widgets/widgets.dart';
import '../../shell/admin_shell.dart';
import '../inventory_status_x.dart';
import 'cubit/inventory_timeline_cubit.dart';

/// IT Admin Device Timeline screen (mockup A06): a read-only, append-only
/// vertical timeline of lifecycle events for one device, backed by
/// [InventoryTimelineCubit].
class InventoryTimelineScreen extends StatefulWidget {
  const InventoryTimelineScreen({super.key, required this.deviceName});

  /// Passed via `GoRouterState.extra` from the Device Detail screen so this
  /// screen doesn't need a second network round-trip just to show a title.
  /// Falls back to the raw device id when navigated to directly.
  final String deviceName;

  @override
  State<InventoryTimelineScreen> createState() =>
      _InventoryTimelineScreenState();
}

class _InventoryTimelineScreenState extends State<InventoryTimelineScreen> {
  @override
  void initState() {
    super.initState();
    context.read<InventoryTimelineCubit>().loadTimeline();
  }

  @override
  Widget build(BuildContext context) {
    return AdminShell(
      title: context.l10n.inventoryTimelineTitle(widget.deviceName),
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.screenPadding),
        child: BlocBuilder<InventoryTimelineCubit, InventoryTimelineState>(
          builder: (context, state) {
            return NetworkStateView<List<DeviceTimelineEventResDm>>(
              state: state.events,
              isEmpty: (data) => data.isEmpty,
              onData: (context, events) => SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VerticalTimeline(
                      entries: [
                        for (final event in events)
                          TimelineEntry(
                            title: event.eventType.title,
                            timestamp: event.occurredAt == null
                                ? ''
                                : DateFormat('dd MMM yyyy · HH:mm')
                                    .format(event.occurredAt!.toLocal()),
                            description: [
                              if (event.note != null && event.note!.isNotEmpty) event.note,
                              'Actor: ${event.actorRole.name}',
                            ].join(' · '),
                            semantic: event.eventType.timelineDotSemantic,
                          ),
                      ],
                    ),
                    const Gap(20),
                    Row(
                      children: [
                        Icon(
                          Icons.lock_outline,
                          size: 14,
                          color: context.appColors.textHint,
                        ),
                        const Gap(7),
                        Text(
                          context.l10n.inventoryTimelineFooterNote,
                          style: context.appTextStyles.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

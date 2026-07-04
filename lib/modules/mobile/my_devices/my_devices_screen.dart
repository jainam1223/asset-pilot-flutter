import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../repositories/remote_repository/device/models/my_device_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/network/network_state.dart';
import '../../../values/app_global/current_user.dart';
import '../../../widgets/widgets.dart';
import 'cubit/my_devices_cubit.dart';
import 'device_status_x.dart';

/// Employee's device list (mockup E02) — active `request` rows with their
/// assigned `item` + `category`, fetched from `GET /me/devices`.
class MyDevicesScreen extends StatelessWidget {
  const MyDevicesScreen({super.key});

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
            title: context.l10n.myDevicesTitle,
            trailing: const NotificationBell(),
          ),
          Expanded(
            child: BlocBuilder<MyDevicesCubit, MyDevicesState>(
              builder: (context, state) {
                return RefreshIndicator(
                  onRefresh: () =>
                      context.read<MyDevicesCubit>().fetchMyDevices(),
                  child: CustomScrollView(
                    slivers: [
                      switch (state.devices) {
                        Idle() || Loading() => SliverSkeletonList(
                          itemBuilder: (_) => const ListItemCardSkeleton(),
                        ),
                        Error(:final message) => SliverFillRemaining(
                          hasScrollBody: false,
                          child: ErrorStateView(
                            title: context.l10n.somethingWentWrong,
                            message: message,
                            onRetry: () => context
                                .read<MyDevicesCubit>()
                                .fetchMyDevices(),
                          ),
                        ),
                        Success(:final data) => _DeviceListSliver(
                          devices: data
                              .where((d) => d.assignedItem != null)
                              .toList(),
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

class _DeviceListSliver extends StatelessWidget {
  const _DeviceListSliver({required this.devices});

  final List<MyDeviceResDm> devices;

  @override
  Widget build(BuildContext context) {
    if (devices.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: EmptyStateView(
          icon: Icons.devices_other_outlined,
          title: context.l10n.noDevicesTitle,
          message: context.l10n.noDevicesAssigned,
        ),
      );
    }
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
      sliver: SliverList.separated(
        itemCount: devices.length,
        separatorBuilder: (_, _) => const SizedBox(height: 13),
        itemBuilder: (context, index) => _DeviceCard(device: devices[index]),
      ),
    );
  }
}

class _DeviceCard extends StatelessWidget {
  const _DeviceCard({required this.device});

  final MyDeviceResDm device;

  static final _dateFormat = DateFormat('dd MMM yyyy');

  String? get _metaLine {
    if (device.shipTrackingUrl != null) return 'In transit to home';
    if (device.returnTrackingUrl != null) return 'Return in transit';
    final from = device.assignedFrom;
    final to = device.assignedTo;
    if (from == null || to == null) return null;
    return '${_dateFormat.format(from)} – ${_dateFormat.format(to)}';
  }

  @override
  Widget build(BuildContext context) {
    final item = device.assignedItem;
    final status = deviceStatusFromWire(item?.status ?? 'available');
    final categoryName = device.category?.name ?? '';

    return ListItemCard(
      leading: IconBox(
        icon: _categoryIcon(categoryName),
        semantic: status.semantic == AppSemantic.success
            ? AppSemantic.brand
            : status.semantic,
      ),
      title: item?.name ?? '',
      subtitle: categoryName,
      trailing: StatusPill(semantic: status.semantic, label: status.label),
      meta: _metaLine == null
          ? null
          : MetaEntry(
              icon: device.shipTrackingUrl != null
                  ? Icons.local_shipping_outlined
                  : Icons.calendar_today_outlined,
              label: _metaLine!,
            ),
    );
  }

  IconData _categoryIcon(String categoryName) {
    final normalized = categoryName.toLowerCase();
    if (normalized.contains('laptop')) return Icons.laptop_mac_outlined;
    if (normalized.contains('mobile') || normalized.contains('phone')) {
      return Icons.phone_iphone_outlined;
    }
    if (normalized.contains('monitor')) return Icons.desktop_windows_outlined;
    return Icons.devices_other_outlined;
  }
}

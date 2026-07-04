import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../utilities/network/network_state.dart';
import '../../../values/app_global/current_user.dart';
import '../../../widgets/widgets.dart';
import 'cubit/my_devices_cubit.dart';
import 'device_status_x.dart';

/// Employee's device list (mockup E02) — `item` rows currently owned by the
/// signed-in employee, fetched from `GET /me/devices`.
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
                          devices: data,
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

  final List<MyDevice> devices;

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
        itemBuilder: (context, index) => _DeviceCard(
          device: devices[index],
          onTap: () => context.push(
            Routes.deviceDetail.path.replaceFirst(
              ':id',
              devices[index].item.id,
            ),
            extra: devices[index],
          ),
        ),
      ),
    );
  }
}

class _DeviceCard extends StatelessWidget {
  const _DeviceCard({required this.device, required this.onTap});

  final MyDevice device;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final item = device.item;
    final status = deviceStatusFromWire(item.status);
    final categoryName = device.categoryName;

    return ListItemCard(
      onTap: onTap,
      leading: IconBox(
        icon: _categoryIcon(categoryName),
        semantic: status.semantic == AppSemantic.success
            ? AppSemantic.brand
            : status.semantic,
      ),
      title: item.name,
      subtitle: categoryName,
      trailing: StatusPill(semantic: status.semantic, label: status.label),
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

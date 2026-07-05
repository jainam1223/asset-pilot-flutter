import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../repositories/remote_repository/common/models/item_res_dm.dart';
import '../../../repositories/remote_repository/device/device_repository.dart';
import '../../../utilities/api_utilities/error_manager.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../values/app_theme/app_colors.dart';
import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';
import '../my_devices/device_status_x.dart';

/// Device Detail screen for a single `item` owned by the signed-in
/// employee, opened from the My Devices list (mockup E03).
///
/// Current-assignment fields ([assignedFrom]/[assignedTo]/[isWfh]/
/// [shipTrackingUrl]) are nullable — `GET /me/devices` doesn't return them
/// yet, so this screen renders whatever it's handed and hides the
/// "Current Assignment" card entirely when none of them are present.
class DeviceDetailScreen extends StatefulWidget {
  const DeviceDetailScreen({
    super.key,
    required this.item,
    required this.categoryName,
    this.assignedFrom,
    this.assignedTo,
    this.isWfh = false,
    this.shipTrackingUrl,
  });

  final ItemResDm item;
  final String categoryName;
  final DateTime? assignedFrom;
  final DateTime? assignedTo;
  final bool isWfh;
  final String? shipTrackingUrl;

  @override
  State<DeviceDetailScreen> createState() => _DeviceDetailScreenState();
}

class _DeviceDetailScreenState extends State<DeviceDetailScreen> {
  bool _returning = false;

  Future<void> _onReturnPressed() async {
    if (widget.isWfh) {
      final returned = await context.push<bool>(
        Routes.returnDevice.path,
        extra: (widget.item.id, widget.item.name),
      );
      if (returned == true && mounted) context.pop();
      return;
    }
    setState(() => _returning = true);
    final result = await DeviceRepository.instance.returnDeviceNonWfh(
      widget.item.id,
    );
    if (!mounted) return;
    setState(() => _returning = false);
    result.when(
      success: (_) {
        AppToast.success(context, context.l10n.returnDeviceNonWfhSuccessToast);
        context.pop();
      },
      failure: (error) {
        errorManager.handle(error);
        AppToast.error(context, error.message);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final status = deviceStatusFromWire(widget.item.status);
    return Scaffold(
      backgroundColor: context.appColors.scaffoldAlt,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Column(
          children: [
            _DeviceDetailHeader(
              item: widget.item,
              categoryName: widget.categoryName,
              status: status,
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                children: [
                  if (widget.assignedFrom != null ||
                      widget.assignedTo != null ||
                      widget.isWfh ||
                      widget.shipTrackingUrl != null) ...[
                    _SectionLabel(context.l10n.deviceDetailCurrentAssignment),
                    const SizedBox(height: 10),
                    _CurrentAssignmentCard(
                      assignedFrom: widget.assignedFrom,
                      assignedTo: widget.assignedTo,
                      isWfh: widget.isWfh,
                      shipTrackingUrl: widget.shipTrackingUrl,
                    ),
                    const SizedBox(height: 16),
                  ],
                  AppCard(
                    child: QrDisplay(
                      qrImage: QrImageView(
                        data: widget.item.assignedItemId,
                        backgroundColor: Colors.white,
                        eyeStyle: QrEyeStyle(
                          color: context.appColors.textPrimary,
                        ),
                        dataModuleStyle: QrDataModuleStyle(
                          color: context.appColors.textPrimary,
                        ),
                      ),
                      token: widget.item.qrCodeToken,
                      tokenLabel: context.l10n.deviceDetailToken,
                      title: context.l10n.deviceDetailScanToVerify,
                    ),
                  ),
                ],
              ),
            ),
            _ActionButtonGrid(
              isReturning: _returning,
              onReturnPressed: _onReturnPressed,
              canReturn: widget.assignedFrom != null ||
                  widget.assignedTo != null ||
                  widget.isWfh,
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label.toUpperCase(),
      style: context.appTextStyles.label.copyWith(
        color: context.appColors.textTertiary,
      ),
    );
  }
}

class _DeviceDetailHeader extends StatelessWidget {
  const _DeviceDetailHeader({
    required this.item,
    required this.categoryName,
    required this.status,
  });

  final ItemResDm item;
  final String categoryName;
  final DeviceStatus status;

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
              Expanded(
                child: Text(
                  context.l10n.deviceDetailAppBarTitle,
                  textAlign: TextAlign.center,
                  style: context.appTextStyles.labelXLarge.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 40),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconBox(
                icon: _categoryIcon(categoryName),
                semantic: AppSemantic.brand,
                size: IconBoxSize.lg,
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: context.appTextStyles.h1.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      context.l10n.deviceDetailHeaderMeta(
                        item.serialNo,
                        categoryName,
                      ),
                      style: context.appTextStyles.bodySmall.copyWith(
                        color: AppColors.textOnDarkMuted,
                      ),
                    ),
                    const SizedBox(height: 8),
                    StatusPill(semantic: status.semantic, label: status.label),
                  ],
                ),
              ),
            ],
          ),
        ],
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

class _CurrentAssignmentCard extends StatelessWidget {
  const _CurrentAssignmentCard({
    required this.assignedFrom,
    required this.assignedTo,
    required this.isWfh,
    required this.shipTrackingUrl,
  });

  final DateTime? assignedFrom;
  final DateTime? assignedTo;
  final bool isWfh;
  final String? shipTrackingUrl;

  static final _dateFormat = DateFormat('dd MMM yyyy');

  @override
  Widget build(BuildContext context) {
    return InfoRowsCard(
      rows: [
        if (assignedFrom != null)
          InfoRow(
            label: context.l10n.deviceDetailAssignedFrom,
            value: Text(
              _dateFormat.format(assignedFrom!),
              style: context.appTextStyles.labelXLarge,
            ),
          ),
        if (assignedTo != null)
          InfoRow(
            label: context.l10n.deviceDetailAssignedTo,
            value: Text(
              _dateFormat.format(assignedTo!),
              style: context.appTextStyles.labelXLarge,
            ),
          ),
        if (isWfh)
          InfoRow(
            label: context.l10n.deviceDetailSetup,
            value: PriorityTag(
              semantic: AppSemantic.brand,
              label: context.l10n.deviceDetailWfhTag,
            ),
          ),
        if (shipTrackingUrl != null)
          InfoRow(
            label: context.l10n.deviceDetailShipTracking,
            value: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  shipTrackingUrl!,
                  style: context.appTextStyles.labelXLarge.copyWith(
                    color: context.appColors.primary,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.north_east,
                  size: 14,
                  color: context.appColors.primary,
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _ActionButtonGrid extends StatelessWidget {
  const _ActionButtonGrid({
    required this.isReturning,
    required this.onReturnPressed,
    required this.canReturn,
  });

  final bool isReturning;
  final VoidCallback onReturnPressed;
  final bool canReturn;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 20),
      decoration: BoxDecoration(
        color: context.appColors.surface,
        border: Border(top: BorderSide(color: context.appColors.border)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: AppButton(
                  label: context.l10n.deviceDetailRequestSupport,
                  variant: AppButtonVariant.secondary,
                  onPressed: () => _showComingSoon(context),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppButton(
                  label: context.l10n.deviceDetailExtend,
                  variant: AppButtonVariant.secondary,
                  onPressed: () => _showComingSoon(context),
                ),
              ),
            ],
          ),
          if (canReturn) ...[
            const SizedBox(height: 12),
            AppButton(
              label: context.l10n.deviceDetailReturn,
              variant: AppButtonVariant.secondary,
              expand: true,
              isLoading: isReturning,
              onPressed: isReturning ? null : onReturnPressed,
            ),
          ],
        ],
      ),
    );
  }

  // TODO(api): wire to real Support/Extend flows once their endpoints and
  // screens exist.
  void _showComingSoon(BuildContext context) =>
      AppToast.info(context, context.l10n.comingSoon);
}

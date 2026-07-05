import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/network/network_state.dart';
import '../../../widgets/widgets.dart';
import 'cubit/return_device_cubit.dart';

/// Return Device (WFH) screen (mockup E09) — the employee supplies a
/// return tracking URL and submits `POST /me/devices/{itemId}/return`.
/// The device stays assigned until IT confirms receipt.
class ReturnDeviceScreen extends StatelessWidget {
  const ReturnDeviceScreen({super.key, required this.deviceName});

  final String deviceName;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: context.appColors.scaffoldAlt,
        body: BlocConsumer<ReturnDeviceCubit, ReturnDeviceState>(
          listenWhen: (previous, current) => previous.submit != current.submit,
          listener: (context, state) {
            switch (state.submit) {
              case Success():
                AppToast.success(
                  context,
                  context.l10n.returnDeviceInitiateSuccessToast,
                );
                context.pop(true);
              case Error(:final message):
                AppToast.error(context, message);
              case Idle() || Loading():
                break;
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                const _ReturnDeviceAppBar(),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(20, 22, 20, 20),
                    children: [
                      _DeviceHeader(deviceName: deviceName),
                      const SizedBox(height: 18),
                      AppTextField(
                        label: context.l10n.returnDeviceTrackingUrlLabel,
                        hintText: context.l10n.returnDeviceTrackingUrlHint,
                        leadingIcon: Icons.link,
                        onChanged: context
                            .read<ReturnDeviceCubit>()
                            .setTrackingUrl,
                      ),
                      const SizedBox(height: 16),
                      InlineAlert(
                        semantic: AppSemantic.success,
                        icon: Icons.check_circle_outline,
                        message: context.l10n.returnDeviceShippingNotice,
                      ),
                    ],
                  ),
                ),
                _SubmitBar(
                  isLoading: state.submit.isLoading,
                  enabled: state.trackingUrl.trim().isNotEmpty,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _ReturnDeviceAppBar extends StatelessWidget {
  const _ReturnDeviceAppBar();

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
      decoration: BoxDecoration(
        color: context.appColors.surface,
        border: Border(bottom: BorderSide(color: context.appColors.divider)),
      ),
      child: Row(
        children: [
          AppIconButton(icon: Icons.arrow_back, onPressed: () => context.pop()),
          const SizedBox(width: 14),
          Text(context.l10n.returnDeviceTitle, style: context.appTextStyles.h3),
        ],
      ),
    );
  }
}

class _DeviceHeader extends StatelessWidget {
  const _DeviceHeader({required this.deviceName});

  final String deviceName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const IconBox(
          icon: Icons.local_shipping_outlined,
          semantic: AppSemantic.brand,
          size: IconBoxSize.lg,
        ),
        const SizedBox(height: 12),
        Text(deviceName, style: context.appTextStyles.labelXLarge),
      ],
    );
  }
}

class _SubmitBar extends StatelessWidget {
  const _SubmitBar({required this.isLoading, required this.enabled});

  final bool isLoading;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 20),
      decoration: BoxDecoration(
        color: context.appColors.surface,
        border: Border(top: BorderSide(color: context.appColors.border)),
      ),
      child: AppButton(
        label: context.l10n.returnDeviceInitiateButton,
        expand: true,
        isLoading: isLoading,
        onPressed: (isLoading || !enabled)
            ? null
            : () => context.read<ReturnDeviceCubit>().submit(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/network/network_state.dart';
import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';
import 'cubit/file_support_request_cubit.dart';
import 'support_type_x.dart';

/// File Support Request screen — the employee raises a support ticket
/// against an owned device, submitted via
/// `POST /me/devices/{itemId}/support-requests`.
class FileSupportRequestScreen extends StatelessWidget {
  const FileSupportRequestScreen({super.key, required this.deviceName});

  final String deviceName;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: context.appColors.scaffoldAlt,
        body: BlocConsumer<FileSupportRequestCubit, FileSupportRequestState>(
          listenWhen: (previous, current) => previous.submit != current.submit,
          listener: (context, state) {
            switch (state.submit) {
              case Success():
                AppToast.success(
                  context,
                  context.l10n.fileSupportRequestSuccessToast,
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
                const _FileSupportRequestAppBar(),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
                    children: [
                      _DeviceHeader(deviceName: deviceName),
                      const SizedBox(height: 20),
                      _TypeSelector(state: state),
                      const SizedBox(height: 16),
                      AppTextField.multiline(
                        label: context.l10n.fileSupportRequestDescriptionLabel,
                        hintText: context.l10n.fileSupportRequestDescriptionHint,
                        onChanged: context
                            .read<FileSupportRequestCubit>()
                            .setDescription,
                      ),
                      const SizedBox(height: 24),
                      AppButton(
                        label: context.l10n.fileSupportRequestSubmitButton,
                        expand: true,
                        isLoading: state.submit.isLoading,
                        onPressed: state.canSubmit
                            ? () => context
                                  .read<FileSupportRequestCubit>()
                                  .submit()
                            : null,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _FileSupportRequestAppBar extends StatelessWidget {
  const _FileSupportRequestAppBar();

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
          Text(
            context.l10n.fileSupportRequestTitle,
            style: context.appTextStyles.h3,
          ),
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
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: context.appColors.surfaceMuted,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(deviceName, style: context.appTextStyles.labelXLarge),
    );
  }
}

class _TypeSelector extends StatelessWidget {
  const _TypeSelector({required this.state});

  final FileSupportRequestState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.fileSupportRequestTypeLabel,
          style: context.appTextStyles.emphasisSmall.copyWith(
            color: context.appColors.textTertiary,
          ),
        ),
        const SizedBox(height: 9),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2.6,
          children: [
            for (final type in SupportType.values)
              _TypeOption(
                type: type,
                selected: type == state.type,
                onTap: () =>
                    context.read<FileSupportRequestCubit>().selectType(type),
              ),
          ],
        ),
      ],
    );
  }
}

class _TypeOption extends StatelessWidget {
  const _TypeOption({
    required this.type,
    required this.selected,
    required this.onTap,
  });

  final SupportType type;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: selected
              ? context.appColors.primary.withValues(alpha: 0.08)
              : context.appColors.surface,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selected ? context.appColors.primary : context.appColors.border,
            width: selected ? 1.6 : 1.4,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              type.icon,
              size: 18,
              color: selected
                  ? context.appColors.primary
                  : context.appColors.textTertiary,
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                type.label,
                style: context.appTextStyles.labelMedium.copyWith(
                  color: selected
                      ? context.appColors.primary
                      : context.appColors.textTertiary,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


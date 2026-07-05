import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../repositories/remote_repository/handover/models/handover_lookup_item_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/network/network_state.dart';
import '../../../widgets/widgets.dart';
import 'cubit/request_handover_cubit.dart';

/// Request Handover screen (mockup E13) — the borrower confirms the device
/// resolved from Scan/Pick (via `GET /me/devices/{itemId}`) and sends
/// `POST /me/handover-requests`.
class RequestHandoverScreen extends StatelessWidget {
  const RequestHandoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: context.appColors.scaffoldAlt,
        body: BlocConsumer<RequestHandoverCubit, RequestHandoverState>(
          listenWhen: (previous, current) => previous.submit != current.submit,
          listener: (context, state) {
            switch (state.submit) {
              case Success():
                AppToast.success(
                  context,
                  context.l10n.requestHandoverSuccessToast,
                );
                // Pop both this screen and the Scan screen, signalling `true`
                // up to the shell so the Handover tab refreshes.
                context.pop();
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
                const _RequestHandoverAppBar(),
                Expanded(
                  child: switch (state.device) {
                    Idle() || Loading() => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    Error(:final message) => Center(
                      child: Text(message, textAlign: TextAlign.center),
                    ),
                    Success(:final data) => ListView(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      children: [
                        _DeviceCard(item: data.item),
                        const SizedBox(height: 16),
                        const _DurationField(),
                        const SizedBox(height: 16),
                        AppTextField.multiline(
                          label: context.l10n.requestHandoverNoteLabel,
                          hintText: context.l10n.requestHandoverNoteHint,
                          onChanged: context
                              .read<RequestHandoverCubit>()
                              .setNote,
                        ),
                        const SizedBox(height: 16),
                        InlineAlert(
                          semantic: AppSemantic.brand,
                          icon: Icons.info_outline,
                          message:
                              context.l10n.requestHandoverMultiRequestNotice,
                        ),
                      ],
                    ),
                  },
                ),
                _SubmitBar(isLoading: state.submit.isLoading),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _RequestHandoverAppBar extends StatelessWidget {
  const _RequestHandoverAppBar();

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
            context.l10n.requestHandoverTitle,
            style: context.appTextStyles.h3,
          ),
        ],
      ),
    );
  }
}

class _DeviceCard extends StatelessWidget {
  const _DeviceCard({required this.item});

  final HandoverLookupItemResDm item;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Row(
        children: [
          const IconBox(
            icon: Icons.devices_other_outlined,
            semantic: AppSemantic.brand,
            size: IconBoxSize.lg,
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(item.name, style: context.appTextStyles.labelXLarge),
                const SizedBox(height: 5),
                Text(
                  context.l10n.deviceDetailHeaderMeta(
                    item.serialNo,
                    item.category?.name ?? '',
                  ),
                  style: context.appTextStyles.bodySmall.copyWith(
                    color: context.appColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DurationField extends StatefulWidget {
  const _DurationField();

  @override
  State<_DurationField> createState() => _DurationFieldState();
}

class _DurationFieldState extends State<_DurationField> {
  late final TextEditingController _controller = TextEditingController(
    text: '$kDefaultHandoverDurationHours',
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      label: context.l10n.requestHandoverDurationLabel,
      hintText: context.l10n.requestHandoverDurationHint,
      controller: _controller,
      keyboardType: TextInputType.number,
      leadingIcon: Icons.schedule_outlined,
      onChanged: context.read<RequestHandoverCubit>().setDuration,
    );
  }
}

class _SubmitBar extends StatelessWidget {
  const _SubmitBar({required this.isLoading});

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 20),
      decoration: BoxDecoration(
        color: context.appColors.surface,
        border: Border(top: BorderSide(color: context.appColors.border)),
      ),
      child: AppButton(
        label: context.l10n.requestHandoverSendRequest,
        expand: true,
        isLoading: isLoading,
        onPressed: isLoading
            ? null
            : () => context.read<RequestHandoverCubit>().submit(),
      ),
    );
  }
}

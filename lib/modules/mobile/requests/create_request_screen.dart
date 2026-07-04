import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../repositories/remote_repository/common/models/item_category_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/network/network_state.dart';
import '../../../values/app_global/current_user.dart';
import '../../../values/app_theme/app_colors.dart';
import '../../../values/enumeration/statuses.dart';
import '../../../widgets/widgets.dart';
import 'cubit/create_request_cubit.dart';
import 'request_status_x.dart';

/// Request Device screen (mockup E04) — the signed-in employee raises a new
/// device request, submitted via `POST /me/requests`.
class CreateRequestScreen extends StatelessWidget {
  const CreateRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: context.appColors.scaffoldAlt,
        body: BlocConsumer<CreateRequestCubit, CreateRequestState>(
          listenWhen: (previous, current) => previous.submit != current.submit,
          listener: (context, state) {
            switch (state.submit) {
              case Success():
                AppToast.success(context, context.l10n.createRequestSuccessToast);
                context.pop();
              case Error(:final message):
                AppToast.error(context, message);
              case Idle() || Loading():
                break;
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                const _CreateRequestAppBar(),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
                    children: [
                      InlineAlert(
                        semantic: AppSemantic.brand,
                        icon: Icons.info_outline,
                        messageWidget: RichText(
                          text: TextSpan(
                            style: context.appTextStyles.emphasisSmall
                                .copyWith(color: context.appColors.textSecondary),
                            children: [
                              TextSpan(
                                text: context
                                    .l10n
                                    .createRequestMgrApprovalNoticePrefix,
                              ),
                              TextSpan(
                                text: context
                                    .l10n
                                    .createRequestMgrApprovalNoticeBold,
                                style: context.appTextStyles.emphasisSmall
                                    .copyWith(
                                      color: context.appColors.textSecondary,
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                              TextSpan(
                                text: context
                                    .l10n
                                    .createRequestMgrApprovalNoticeSuffix,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      _CategoryField(state: state),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(child: _DateField.from(state: state)),
                          const SizedBox(width: 12),
                          Expanded(child: _DateField.to(state: state)),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _PrioritySelector(state: state),
                      const SizedBox(height: 16),
                      _WfhToggle(state: state),
                      const SizedBox(height: 16),
                      AppTextField.multiline(
                        label: context.l10n.createRequestNoteLabel,
                        hintText: context.l10n.createRequestNoteHint,
                        onChanged: context.read<CreateRequestCubit>().setNote,
                      ),
                      const SizedBox(height: 16),
                      const _ReportingManagerCard(),
                    ],
                  ),
                ),
                _SubmitBar(state: state),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _CreateRequestAppBar extends StatelessWidget {
  const _CreateRequestAppBar();

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
      child: Row(
        children: [
          AppIconButton(
            icon: Icons.arrow_back,
            variant: AppButtonVariant.primary,
            onPressed: () => context.pop(),
          ),
          const SizedBox(width: 12),
          Text(
            context.l10n.createRequestTitle,
            style: context.appTextStyles.labelXLarge.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryField extends StatelessWidget {
  const _CategoryField({required this.state});

  final CreateRequestState state;

  @override
  Widget build(BuildContext context) {
    return PickerField(
      label: context.l10n.createRequestCategory,
      valueText:
          state.selectedCategory?.name ?? context.l10n.createRequestSelectCategory,
      onTap: () => _showCategoryPicker(context),
    );
  }

  Future<void> _showCategoryPicker(BuildContext context) async {
    final cubit = context.read<CreateRequestCubit>();
    final categories = state.categories.dataOrNull;
    if (categories == null || categories.isEmpty) return;

    final selected = await showModalBottomSheet<ItemCategoryResDm>(
      context: context,
      showDragHandle: true,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.7,
      ),
      builder: (sheetContext) => SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            for (final category in categories)
              ListTile(
                title: Text(
                  category.name,
                  style: context.appTextStyles.labelXLarge,
                ),
                trailing: category.id == state.selectedCategory?.id
                    ? Icon(Icons.check, color: context.appColors.primary)
                    : null,
                onTap: () => Navigator.of(sheetContext).pop(category),
              ),
          ],
        ),
      ),
    );
    if (selected != null) cubit.selectCategory(selected);
  }
}

class _DateField extends StatelessWidget {
  const _DateField({required this.state, required this.isFrom});

  factory _DateField.from({required CreateRequestState state}) =>
      _DateField(state: state, isFrom: true);

  factory _DateField.to({required CreateRequestState state}) =>
      _DateField(state: state, isFrom: false);

  final CreateRequestState state;
  final bool isFrom;

  static final _dateFormat = DateFormat('dd MMM');

  @override
  Widget build(BuildContext context) {
    final date = isFrom ? state.requestedFrom : state.requestedTo;
    return PickerField(
      label: isFrom ? context.l10n.createRequestFrom : context.l10n.createRequestTo,
      valueText: date != null ? _dateFormat.format(date) : '—',
      trailingIcon: Icons.calendar_today_outlined,
      onTap: () => _pickDate(context),
    );
  }

  Future<void> _pickDate(BuildContext context) async {
    final cubit = context.read<CreateRequestCubit>();
    final now = DateTime.now();
    final initial =
        (isFrom ? state.requestedFrom : state.requestedTo) ??
        (isFrom ? now : state.requestedFrom ?? now);
    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: isFrom ? now : (state.requestedFrom ?? now),
      lastDate: DateTime(now.year + 5),
    );
    if (picked == null) return;
    if (isFrom) {
      cubit.setRequestedFrom(picked);
    } else {
      cubit.setRequestedTo(picked);
    }
  }
}

class _PrioritySelector extends StatelessWidget {
  const _PrioritySelector({required this.state});

  final CreateRequestState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.createRequestPriority,
          style: context.appTextStyles.emphasisSmall.copyWith(
            color: context.appColors.textTertiary,
          ),
        ),
        const SizedBox(height: 9),
        Row(
          children: [
            for (final priority in RequestPriority.values) ...[
              if (priority != RequestPriority.values.first)
                const SizedBox(width: 8),
              Expanded(
                child: _PriorityOption(
                  priority: priority,
                  selected: priority == state.priority,
                  onTap: () =>
                      context.read<CreateRequestCubit>().selectPriority(
                        priority,
                      ),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}

class _PriorityOption extends StatelessWidget {
  const _PriorityOption({
    required this.priority,
    required this.selected,
    required this.onTap,
  });

  final RequestPriority priority;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = priority.semantic.colors(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 11),
        decoration: BoxDecoration(
          color: selected ? colors.bg : context.appColors.surface,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selected ? colors.fg : context.appColors.border,
            width: selected ? 1.6 : 1.4,
          ),
        ),
        child: Text(
          priority.label,
          style: context.appTextStyles.labelMedium.copyWith(
            color: selected ? colors.fg : context.appColors.textTertiary,
          ),
        ),
      ),
    );
  }
}

class _WfhToggle extends StatelessWidget {
  const _WfhToggle({required this.state});

  final CreateRequestState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: context.appColors.surface,
        border: Border.all(color: context.appColors.border, width: 1.4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.l10n.createRequestWfhTitle,
                  style: context.appTextStyles.labelXLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  context.l10n.createRequestWfhSubtitle,
                  style: context.appTextStyles.bodySmall.copyWith(
                    color: context.appColors.textTertiary,
                  ),
                ),
              ],
            ),
          ),
          AppSwitch(
            value: state.isWfh,
            onChanged: context.read<CreateRequestCubit>().setIsWfh,
          ),
        ],
      ),
    );
  }
}

class _ReportingManagerCard extends StatelessWidget {
  const _ReportingManagerCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
      decoration: BoxDecoration(
        color: context.appColors.surfaceMuted,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const AppAvatar(name: CurrentUser.managerName, size: AppAvatarSize.sm),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.createRequestReportingManager,
                style: context.appTextStyles.bodySmall.copyWith(
                  color: context.appColors.textTertiary,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                CurrentUser.managerName,
                style: context.appTextStyles.labelXLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SubmitBar extends StatelessWidget {
  const _SubmitBar({required this.state});

  final CreateRequestState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 20),
      decoration: BoxDecoration(
        color: context.appColors.surface,
        border: Border(top: BorderSide(color: context.appColors.border)),
      ),
      child: AppButton(
        label: context.l10n.createRequestSendRequest,
        expand: true,
        isLoading: state.submit.isLoading,
        onPressed: state.canSubmit
            ? () => context.read<CreateRequestCubit>().submit()
            : null,
      ),
    );
  }
}

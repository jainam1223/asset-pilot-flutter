import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../repositories/local_repository/shared_pref/shared_pref.dart';
import '../../../repositories/remote_repository/common/models/user_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../values/app_global/current_user.dart';
import '../../../values/app_theme/app_colors.dart';
import '../../../widgets/widgets.dart';

/// Employee/Manager profile screen (mockup E15).
///
/// Reporting-manager and change-password sections are static display only —
/// there is no backend yet to persist either action.
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({required this.user, super.key});

  final UserResDm? user;

  @override
  Widget build(BuildContext context) {
    final name = user?.name ?? CurrentUser.name;
    final email = user?.email ?? '';
    final roleLabel = user?.role == 'manager'
        ? context.l10n.roleManager
        : context.l10n.roleEmployee;

    return Column(
      children: [
        _ProfileHeader(name: name, email: email, roleLabel: roleLabel),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 20),
            children: [
              Text(
                context.l10n.profileReportingManager,
                style: context.appTextStyles.overline,
              ),
              const Gap(10),
              const _ReportingManagerField(),
              const Gap(11),
              AppButton(
                label: context.l10n.profileSaveManager,
                variant: AppButtonVariant.secondary,
                expand: true,
                onPressed: () {},
              ),
              const Gap(20),
              Text(
                context.l10n.profileChangePassword,
                style: context.appTextStyles.overline,
              ),
              const Gap(10),
              _StaticPasswordField(label: context.l10n.profileCurrentPassword),
              const Gap(12),
              _StaticPasswordField(
                label: context.l10n.profileNewPassword,
                dotsCount: 10,
              ),
              const Gap(11),
              AppButton(
                label: context.l10n.profileUpdatePassword,
                variant: AppButtonVariant.secondary,
                expand: true,
                onPressed: () {},
              ),
              const Gap(24),
              AppButton(
                label: context.l10n.profileLogout,
                variant: AppButtonVariant.destructive,
                expand: true,
                onPressed: () => _confirmLogout(context),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _confirmLogout(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(context.l10n.profileLogoutConfirmTitle),
        content: Text(context.l10n.profileLogoutConfirmMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(context.l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(
              context.l10n.profileLogout,
              style: TextStyle(color: context.appColors.errorFg),
            ),
          ),
        ],
      ),
    );
    if (confirmed == true && context.mounted) {
      await SharedPref.instance.clearUser();
      if (context.mounted) context.go(Routes.login.path);
    }
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({
    required this.name,
    required this.email,
    required this.roleLabel,
  });

  final String name;
  final String email;
  final String roleLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        22,
        MediaQuery.paddingOf(context).top + 24,
        22,
        26,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.5, -0.87),
          end: Alignment(0.5, 0.87),
          colors: [AppColors.primary, AppColors.primaryDark],
        ),
      ),
      child: Column(
        children: [
          AppAvatar(
            name: name,
            size: AppAvatarSize.lg,
            backgroundColor: Colors.white.withValues(alpha: 0.2),
            foregroundColor: Colors.white,
          ),
          const Gap(12),
          Text(
            name,
            style: context.appTextStyles.h2.copyWith(color: Colors.white),
          ),
          const Gap(6),
          Text(
            '$email · $roleLabel',
            style: context.appTextStyles.bodySmall.copyWith(
              color: context.appColors.textOnDarkMuted,
            ),
          ),
        ],
      ),
    );
  }
}

class _ReportingManagerField extends StatelessWidget {
  const _ReportingManagerField();

  @override
  Widget build(BuildContext context) {
    final managerId = CurrentUser.managerId ?? '';
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: context.appColors.surface,
        border: Border.all(color: context.appColors.primary, width: 1.6),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AppAvatar(name: managerId, size: AppAvatarSize.sm),
              const Gap(10),
              Text(managerId, style: context.appTextStyles.labelXLarge),
            ],
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: context.appColors.primary,
          ),
        ],
      ),
    );
  }
}

class _StaticPasswordField extends StatelessWidget {
  const _StaticPasswordField({required this.label, this.dotsCount = 8});

  final String label;
  final int dotsCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: context.appColors.surface,
        border: Border.all(color: context.appColors.border, width: 1.4),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '•' * dotsCount,
            style: context.appTextStyles.labelXLarge.copyWith(
              letterSpacing: 2,
            ),
          ),
          Text(label, style: context.appTextStyles.bodyXSmall),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../repositories/remote_repository/common/models/user_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../utilities/network/network_state.dart';
import '../../../widgets/widgets.dart';
import 'cubit/login_cubit.dart';

/// IT Admin sign-in screen (mockup E01 styling, admin context).
class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.surfaceMuted,
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
              child: BlocConsumer<AdminLoginCubit, AdminLoginState>(
                listenWhen: (prev, curr) => prev.login != curr.login,
                listener: (context, state) {
                  if (state.login is Success<UserResDm>) {
                    context.go(Routes.adminDashboard.path);
                  } else if (state.login case Error(:final message)) {
                    AppToast.error(context, message);
                  }
                },
                builder: (context, state) {
                  final isLoading = state.login is Loading;
                  return AppCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          context.l10n.welcomeBack,
                          style: context.appTextStyles.h2,
                        ),
                        const Gap(8),
                        Text(
                          context.l10n.signInSubtitle,
                          style: context.appTextStyles.bodyMedium,
                        ),
                        const Gap(28),
                        AppTextField(
                          label: context.l10n.workEmail,
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          enabled: !isLoading,
                        ),
                        const Gap(16),
                        AppTextField(
                          label: context.l10n.password,
                          controller: _password,
                          obscureText: true,
                          enabled: !isLoading,
                        ),
                        const Gap(28),
                        AppButton(
                          label: context.l10n.signIn,
                          isLoading: isLoading,
                          expand: true,
                          onPressed: isLoading
                              ? null
                              : () => context.read<AdminLoginCubit>().login(
                                    email: _email.text.trim(),
                                    password: _password.text,
                                  ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

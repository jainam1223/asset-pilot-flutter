import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../generated/assets.gen.dart';
import '../../../repositories/remote_repository/common/models/user_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../utilities/network/network_state.dart';
import '../../../widgets/widgets.dart';
import 'cubit/login_cubit.dart';

/// Employee/Manager sign-in screen (mockup E01).
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController(
    text: 'arjun.mehta@simform.com',
  );
  final TextEditingController _password = TextEditingController(
    text: 'password',
  );
  bool _obscurePassword = true;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.scaffoldLight,
      body: SafeArea(
        child: BlocConsumer<LoginCubit, LoginState>(
          listenWhen: (prev, curr) => prev.login != curr.login,
          listener: (context, state) {
            if (state.login case Success<UserResDm>(:final data)) {
              context.go(Routes.mobileShell.path, extra: data);
            }
          },
          builder: (context, state) {
            final isLoading = state.login is Loading;
            final errorMessage = switch (state.login) {
              Error(:final message) => message,
              _ => null,
            };
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
                vertical: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Gap(24),
                  const _LoginLogo(),
                  const Gap(38),
                  Text(
                    context.l10n.welcomeBack,
                    style: context.appTextStyles.h1,
                  ),
                  const Gap(8),
                  Text(
                    context.l10n.signInSubtitle,
                    style: context.appTextStyles.bodyMedium,
                  ),
                  const Gap(30),
                  AppTextField(
                    label: context.l10n.workEmail,
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    leadingIcon: Icons.mail_outline,
                  ),
                  const Gap(16),
                  AppTextField(
                    label: context.l10n.password,
                    controller: _password,
                    obscureText: _obscurePassword,
                    leadingIcon: Icons.lock_outline,
                    errorText: errorMessage,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        size: 19,
                      ),
                      onPressed: () => setState(
                        () => _obscurePassword = !_obscurePassword,
                      ),
                    ),
                  ),
                  const Gap(14),
                  Align(
                    alignment: Alignment.centerRight,
                    child: AppTextLink(
                      label: context.l10n.forgotPassword,
                      onPressed: () {},
                    ),
                  ),
                  const Gap(26),
                  AppButton(
                    label: context.l10n.signIn,
                    expand: true,
                    isLoading: isLoading,
                    onPressed: isLoading
                        ? null
                        : () => context.read<LoginCubit>().login(
                            email: _email.text.trim(),
                          ),
                  ),
                  const Gap(30),
                  Text(
                    context.l10n.loginContactItAdmin,
                    textAlign: TextAlign.center,
                    style: context.appTextStyles.bodySmall,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _LoginLogo extends StatelessWidget {
  const _LoginLogo();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(Assets.images.appIcon.path, width: 46, height: 46),
        const Gap(14),
        Text(
          context.l10n.appName,
          style: context.appTextStyles.h3.copyWith(letterSpacing: 3.4),
        ),
      ],
    );
  }
}

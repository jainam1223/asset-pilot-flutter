import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../repositories/remote_repository/auth/models/user_res_dm.dart';
import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import '../../../utilities/network/network_state.dart';
import 'cubit/login_cubit.dart';

/// Employee/Manager sign-in screen (mockup E01).
///
/// Scaffold-level placeholder: real fields/validation come later. Proves the
/// LoginCubit → mocked AuthRepository → navigation wiring end to end.
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

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<LoginCubit, LoginState>(
          listenWhen: (prev, curr) => prev.login != curr.login,
          listener: (context, state) {
            if (state.login is Success<UserResDm>) {
              context.go(Routes.mobileShell.path);
            } else if (state.login case Error(:final message)) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text(message)));
            }
          },
          builder: (context, state) {
            final isLoading = state.login is Loading;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.l10n.welcomeBack,
                    style: context.textTheme.headlineLarge,
                  ),
                  const Gap(8),
                  Text(
                    context.l10n.signInSubtitle,
                    style: context.textTheme.bodyMedium,
                  ),
                  const Gap(28),
                  TextField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: context.l10n.workEmail,
                    ),
                  ),
                  const Gap(16),
                  TextField(
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: context.l10n.password,
                    ),
                  ),
                  const Gap(28),
                  ElevatedButton(
                    onPressed: isLoading
                        ? null
                        : () => context.read<LoginCubit>().login(
                            email: _email.text.trim(),
                            password: _password.text,
                          ),
                    child: isLoading
                        ? SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: context.appColors.surface,
                            ),
                          )
                        : Text(context.l10n.signIn),
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

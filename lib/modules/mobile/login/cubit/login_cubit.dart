import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../repositories/remote_repository/auth/auth_repository.dart';
import '../../../../repositories/remote_repository/common/models/user_res_dm.dart';
import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/network_state.dart';
import '../../../../utilities/network/safe_emit.dart';

part 'login_state.dart';

/// Drives the login screen. Talks to the (mocked) [AuthRepository].
class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  Future<void> login({
    required String email,
    required String password,
    bool isManager = false,
  }) async {
    safeEmit(state.copyWith(login: const Loading()));
    try {
      final result = await AuthRepository.instance.login(
        email: email,
        password: password,
        isManager: isManager,
      );
      result.when(
        success: (data) => safeEmit(state.copyWith(login: Success(data))),
        failure: (error) {
          errorManager.handle(error);
          safeEmit(state.copyWith(login: Error(error.message)));
        },
      );
    } catch (e, st) {
      onError(e, st);
      safeEmit(
        state.copyWith(login: Error(errorManager.handle(e, st).message)),
      );
    }
  }

  void reset() => safeEmit(state.copyWith(login: const Idle()));
}

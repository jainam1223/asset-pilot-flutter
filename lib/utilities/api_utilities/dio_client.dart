import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../repositories/local_repository/shared_pref/shared_pref.dart';
import '../../values/flavors/flavor_config.dart';

/// Builds and holds the shared [Dio] instance used by all repositories.
///
/// Base URL comes from [FlavorConfig.baseUrl] (flavor-aware). Auth token
/// injection and refresh belong in interceptors added here as the app grows.
class DioClient {
  DioClient._();

  static final DioClient instance = DioClient._();

  late final Dio dio = _build();

  Dio _build() {
    final dio = Dio(
      BaseOptions(
        baseUrl: FlavorConfig.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        contentType: 'application/json',
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final user = SharedPref.instance.user;
          if (user != null) {
            options.headers['x-user-id'] = user.id;
            options.headers['x-user-role'] = user.role;
            options.headers['x-user-name'] = user.name;
            if (user.managerId != null) {
              options.headers['x-manager-id'] = user.managerId;
            }
          }
          handler.next(options);
        },
        onResponse: (response, handler) {
          final body = response.data;
          if (body is Map && body.containsKey('data')) {
            response.data = body['data'];
          }
          handler.next(response);
        },
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(requestBody: true, responseBody: true),
      );
    }

    return dio;
  }
}

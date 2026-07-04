import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../repositories/local_repository/secure_storage.dart';
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
        onRequest: (options, handler) async {
          // Skip ngrok's browser-warning interstitial (dev tunnel).
          options.headers['ngrok-skip-browser-warning'] = 'true';
          // Admin flow: attach the bearer token when a session exists.
          final token = await SecureStorage.instance.readAuthToken();
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          // Mobile flow: attach the x-user-* identity headers when a
          // SharedPref-persisted user session exists.
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
            // Preserve server-side pagination (carried in `meta.pagination`)
            // by folding it alongside the list into an envelope that
            // `PaginatedResDm` can deserialize. Non-paginated responses keep
            // the plain `data` unwrap.
            final meta = body['meta'];
            final pagination =
                meta is Map ? meta['pagination'] : null;
            if (pagination != null) {
              response.data = <String, dynamic>{
                'items': body['data'],
                'pagination': pagination,
              };
            } else {
              response.data = body['data'];
            }
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

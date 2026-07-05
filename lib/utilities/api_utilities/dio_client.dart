import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../repositories/local_repository/secure_storage.dart';
import '../../repositories/local_repository/shared_pref/shared_pref.dart';
import '../../values/app_global/admin_session.dart';
import '../../values/enumeration/app_variant.dart';
import '../../values/flavors/flavor_config.dart';
import '../navigation/app_routes.dart';

/// Builds and holds the shared [Dio] instance for whichever variant this
/// process is running as.
///
/// Admin and mobile are separate binaries (`main_admin.dart`/
/// `main_mobile.dart`) that never run in the same process, and they
/// authenticate differently — admin via a bearer token, mobile via
/// `x-user-*` identity headers — so each gets its own [Dio] instance (base
/// URL from [FlavorConfig], variant-specific interceptors) rather than
/// sharing one client with every interceptor bolted on.
class DioClient {
  DioClient._();

  static final DioClient instance = DioClient._();

  late final Dio dio = switch (currentAppVariant) {
    AppVariant.admin => _buildAdmin(),
    AppVariant.mobile => _buildMobile(),
  };

  Dio _buildAdmin() {
    final dio = _base();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await SecureStorage.instance.readAuthToken();
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          handler.next(options);
        },
        onError: (error, handler) async {
          // Session expired/invalidated: the request can never succeed
          // as-is, so clear the stale session and bounce to login instead
          // of leaving the caller to render a raw error.
          final hadBearerToken =
              error.requestOptions.headers['Authorization'] != null;
          if (error.response?.statusCode == 401 && hadBearerToken) {
            await SecureStorage.instance.clear();
            AdminSession.clear();
            final router = appRouter;
            if (router != null &&
                router.state.matchedLocation != Routes.login.path) {
              router.go(Routes.login.path);
            }
          }
          handler.next(error);
        },
      ),
    );
    return dio;
  }

  Dio _buildMobile() {
    final dio = _base();
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
      ),
    );
    return dio;
  }

  /// Shared setup common to every variant: base URL/timeouts, the ngrok
  /// interstitial bypass, the `data`-envelope unwrap, and debug logging.
  Dio _base() {
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
          // Skip ngrok's browser-warning interstitial (dev tunnel).
          options.headers['ngrok-skip-browser-warning'] = 'true';
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
            final pagination = meta is Map ? meta['pagination'] : null;
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

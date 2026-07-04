import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../env/env.dart';

/// Builds and holds the shared [Dio] instance used by all repositories.
///
/// Base URL comes from [Env.current] (flavor-aware). Auth token injection and
/// refresh belong in interceptors added here as the app grows.
class DioClient {
  DioClient._();

  static final DioClient instance = DioClient._();

  late final Dio dio = _build();

  Dio _build() {
    final dio = Dio(
      BaseOptions(
        baseUrl: Env.current.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        contentType: 'application/json',
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // TODO(auth): attach bearer token from secure storage.
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

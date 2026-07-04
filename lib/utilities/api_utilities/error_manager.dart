import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../models/exceptions/app_exception.dart';

/// Centralized handling/logging of API errors.
///
/// Cubits call [handle] for every failure before surfacing a message to the
/// UI. This is the single place to add crash reporting, breadcrumbs, etc.
class ErrorManager {
  const ErrorManager();

  /// Log/report an error. Returns the [AppException] for convenience.
  AppException handle(Object error, [StackTrace? stackTrace]) {
    final exception = _map(error);
    if (kDebugMode) {
      debugPrint('[ErrorManager] $exception');
      if (stackTrace != null) debugPrint(stackTrace.toString());
    }
    // TODO(observability): forward to crash reporting when wired.
    return exception;
  }

  /// Normalize any thrown object into an [AppException].
  AppException toAppException(Object error) => _map(error);

  AppException _map(Object error) {
    if (error is AppException) return error;
    if (error is DioException) return _mapDio(error);
    return const UnknownException();
  }

  AppException _mapDio(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.transformTimeout:
        return const TimeoutException();
      case DioExceptionType.connectionError:
        return const NoConnectionException();
      case DioExceptionType.badResponse:
        final code = error.response?.statusCode;
        final message =
            _messageFromResponse(error.response?.data) ??
            'Request failed${code == null ? '' : ' ($code)'}.';
        return NetworkException(message, statusCode: code);
      case DioExceptionType.cancel:
        return const NetworkException('Request cancelled.');
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        return const UnknownException();
    }
  }

  String? _messageFromResponse(Object? data) {
    if (data is Map && data['message'] is String) {
      return data['message'] as String;
    }
    return null;
  }
}

/// Global instance used across cubits (see convention `errorManager.handle`).
const ErrorManager errorManager = ErrorManager();

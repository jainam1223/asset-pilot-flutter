import 'package:flutter/foundation.dart';

/// Base type for all application-level failures.
///
/// Repositories and the networking layer surface failures as an
/// [AppException] (or subtype) so the UI/error manager can treat them
/// uniformly.
@immutable
sealed class AppException implements Exception {
  const AppException(this.message, {this.statusCode});

  /// Human-readable, display-safe message.
  final String message;

  /// Optional HTTP/status code associated with the failure.
  final int? statusCode;

  @override
  String toString() =>
      '$runtimeType(message: $message, statusCode: $statusCode)';
}

/// A failure originating from the network / API layer.
final class NetworkException extends AppException {
  const NetworkException(super.message, {super.statusCode});
}

/// No connectivity / request could not reach the server.
final class NoConnectionException extends AppException {
  const NoConnectionException([super.message = 'No internet connection.']);
}

/// The request timed out.
final class TimeoutException extends AppException {
  const TimeoutException([super.message = 'The request timed out.']);
}

/// An unexpected / unclassified failure.
final class UnknownException extends AppException {
  const UnknownException([super.message = 'Something went wrong.']);
}

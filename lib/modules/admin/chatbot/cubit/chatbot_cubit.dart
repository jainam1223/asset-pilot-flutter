import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/safe_emit.dart';
import '../../../../values/flavors/flavor_config.dart';

part 'chatbot_state.dart';

/// Drives the floating AI chatbot: keeps the transcript and posts it to the
/// standalone chat service (`/chat`, separate base URL) as
/// `{ "query": <joined history>, "role": "it_admin" }` — the full conversation
/// so far, since `/chat` has no dedicated history field.
class ChatbotCubit extends Cubit<ChatbotState> {
  ChatbotCubit({Dio? dio})
    : _dio =
          dio ??
          Dio(
            BaseOptions(
              baseUrl: FlavorConfig.chatBaseUrl,
              // The chat service can take a few seconds to answer; keep timeouts
              // generous so a slow reply isn't misreported as a connection error.
              connectTimeout: const Duration(seconds: 20),
              sendTimeout: const Duration(seconds: 20),
              receiveTimeout: const Duration(seconds: 60),
              contentType: Headers.jsonContentType,
              responseType: ResponseType.json,
            ),
          ),
      super(const ChatbotState());

  final Dio _dio;

  Future<void> send(String message) async {
    final query = message.trim();
    if (query.isEmpty || state.isSending) return;

    final history = [...state.messages, ChatMessage(text: query, isUser: true)];
    safeEmit(
      state.copyWith(messages: history, isSending: true, clearError: true),
    );

    try {
      // Send the full conversation so far (including this new user turn) as
      // the query, so the backend has history despite `/chat` taking a single
      // string — there's no dedicated history field on the request.
      final response = await _dio.post<dynamic>(
        'chat',
        data: {'query': _joinHistory(history), 'role': 'it_admin'},
      );
      final reply = _extractReply(response.data);
      safeEmit(
        state.copyWith(
          messages: [
            ...state.messages,
            ChatMessage(text: reply, isUser: false),
          ],
          isSending: false,
        ),
      );
    } catch (error, stackTrace) {
      final exception = errorManager.handle(error, stackTrace);
      safeEmit(state.copyWith(isSending: false, error: exception.message));
    }
  }

  /// Joins the transcript into a single string, one `role: text` line per
  /// turn, so the backend receives conversation history in its `query` field.
  String _joinHistory(List<ChatMessage> history) =>
      history.map((m) => '${m.role}: ${m.text}').join('\n');

  /// Pulls the reply text out of the response. The backend contract returns
  /// `{ "answer": "<markdown>", "refused": bool }`; the extra keys are lenient
  /// fallbacks so a slightly different body still shows *something* rather than
  /// crash.
  String _extractReply(Object? data) {
    if (data is String) return data;
    if (data is Map) {
      for (final key in const ['answer', 'response', 'reply', 'message', 'data']) {
        final value = data[key];
        if (value is String && value.isNotEmpty) return value;
      }
    }
    return data?.toString() ?? '';
  }
}

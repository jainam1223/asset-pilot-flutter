import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utilities/api_utilities/error_manager.dart';
import '../../../../utilities/network/safe_emit.dart';
import '../../../../values/flavors/flavor_config.dart';

part 'chatbot_state.dart';

/// Drives the floating AI chatbot in mobile: keeps the transcript and posts it to the
/// mobile chat service (`/chat` at `FlavorConfig.mobileChatBaseUrl`) as
/// `{ "query": <joined history> }`.
class ChatbotCubit extends Cubit<ChatbotState> {
  ChatbotCubit({Dio? dio})
    : _dio =
          dio ??
          Dio(
            BaseOptions(
              baseUrl: FlavorConfig.mobileChatBaseUrl,
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
      final response = await _dio.post<dynamic>(
        'chat/employee',
        data: {'query': _joinHistory(history)},
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

  String _joinHistory(List<ChatMessage> history) =>
      history.map((m) => '${m.role}: ${m.text}').join('\n');

  String _extractReply(Object? data) {
    if (data is String) return data;
    if (data is Map) {
      for (final key in const [
        'answer',
        'response',
        'reply',
        'message',
        'data',
      ]) {
        final value = data[key];
        if (value is String && value.isNotEmpty) return value;
      }
    }
    return data?.toString() ?? '';
  }
}

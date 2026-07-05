part of 'chatbot_cubit.dart';

/// A single chat entry — either sent by the user or received from the AI.
@immutable
class ChatMessage extends Equatable {
  const ChatMessage({required this.text, required this.isUser});

  final String text;
  final bool isUser;

  /// Role label used when this message is folded into the `query` sent to the
  /// `/chat` endpoint as conversation history.
  String get role => isUser ? 'user' : 'assistant';

  @override
  List<Object?> get props => [text, isUser];
}

/// State for the floating AI chatbot.
///
/// [messages] is the ordered transcript (oldest first). [isSending] is true
/// while a reply is in flight, and [error] holds a human-readable message when
/// the last send failed (cleared on the next send).
@immutable
class ChatbotState extends Equatable {
  const ChatbotState({
    this.messages = const [],
    this.isSending = false,
    this.error,
  });

  final List<ChatMessage> messages;
  final bool isSending;
  final String? error;

  ChatbotState copyWith({
    List<ChatMessage>? messages,
    bool? isSending,
    String? error,
    bool clearError = false,
  }) {
    return ChatbotState(
      messages: messages ?? this.messages,
      isSending: isSending ?? this.isSending,
      error: clearError ? null : (error ?? this.error),
    );
  }

  @override
  List<Object?> get props => [messages, isSending, error];
}

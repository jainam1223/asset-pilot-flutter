import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gpt_markdown/gpt_markdown.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/navigation/app_routes.dart';
import 'cubit/chatbot_cubit.dart';

/// Launcher button for the AI chatbot in the mobile shell overlay: a button
/// pinned to the bottom-right that opens the full-screen [ChatbotScreen].
class FloatingChatbot extends StatelessWidget {
  const FloatingChatbot({this.showAboveFab = false, super.key});

  final bool showAboveFab;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 16,
      bottom: showAboveFab ? 88 : 16,
      child: _LauncherButton(
        onTap: () => context.push(Routes.chatbot.path),
      ),
    );
  }
}

class _LauncherButton extends StatelessWidget {
  const _LauncherButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
    return Tooltip(
      message: context.l10n.chatbotTooltip,
      child: Material(
        color: colors.primary,
        shape: shape,
        elevation: 4,
        child: InkWell(
          customBorder: shape,
          onTap: onTap,
          child: const SizedBox(
            width: 56,
            height: 56,
            child: Icon(
              Icons.chat_bubble_outline_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

/// Full-screen AI chatbot page (pushed from the shell launcher). Owns its own
/// [ChatbotCubit] via the route's `.withProvider()`.
class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final _inputController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _inputController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _send() {
    final text = _inputController.text;
    if (text.trim().isEmpty) return;
    context.read<ChatbotCubit>().send(text);
    _inputController.clear();
  }

  void _scrollToBottom() {
    if (!_scrollController.hasClients) return;
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Scaffold(
      backgroundColor: colors.surface,
      appBar: AppBar(
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            const Icon(Icons.smart_toy_outlined, color: Colors.white, size: 20),
            const SizedBox(width: 8),
            Text(
              context.l10n.chatbotTitle,
              style: context.appTextStyles.emphasisMedium.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocConsumer<ChatbotCubit, ChatbotState>(
              listener: (context, state) {
                WidgetsBinding.instance.addPostFrameCallback(
                  (_) => _scrollToBottom(),
                );
              },
              builder: (context, state) => _MessageList(
                state: state,
                controller: _scrollController,
              ),
            ),
          ),
          SafeArea(
            top: false,
            child: _Composer(controller: _inputController, onSend: _send),
          ),
        ],
      ),
    );
  }
}

class _MessageList extends StatelessWidget {
  const _MessageList({required this.state, required this.controller});

  final ChatbotState state;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    if (state.messages.isEmpty && !state.isSending && state.error == null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            context.l10n.chatbotEmptyMessage,
            textAlign: TextAlign.center,
            style: context.appTextStyles.bodySmall.copyWith(
              color: colors.textSecondary,
            ),
          ),
        ),
      );
    }

    final itemCount =
        state.messages.length +
        (state.isSending ? 1 : 0) +
        (state.error != null ? 1 : 0);

    return ListView.builder(
      controller: controller,
      padding: const EdgeInsets.all(12),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        if (index < state.messages.length) {
          return _MessageBubble(message: state.messages[index]);
        }
        if (state.isSending && index == state.messages.length) {
          return const _TypingBubble();
        }
        return _ErrorLine(message: state.error ?? context.l10n.chatbotError);
      },
    );
  }
}

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final isUser = message.isUser;
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.75,
        ),
        decoration: BoxDecoration(
          color: isUser ? colors.primary : colors.surfaceMuted,
          borderRadius: BorderRadius.circular(12),
        ),
        child: isUser
            ? Text(
                message.text,
                style: context.appTextStyles.bodySmall.copyWith(
                  color: Colors.white,
                ),
              )
            : GptMarkdown(
                message.text,
                style: context.appTextStyles.bodySmall.copyWith(
                  color: colors.textPrimary,
                ),
              ),
      ),
    );
  }
}

class _TypingBubble extends StatefulWidget {
  const _TypingBubble();

  @override
  State<_TypingBubble> createState() => _TypingBubbleState();
}

class _TypingBubbleState extends State<_TypingBubble>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        decoration: BoxDecoration(
          color: colors.surfaceMuted,
          borderRadius: BorderRadius.circular(12),
        ),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (var i = 0; i < 3; i++) ...[
                  if (i != 0) const SizedBox(width: 4),
                  _TypingDot(
                    progress: _controller.value,
                    delay: i * 0.2,
                    color: colors.primary,
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

class _TypingDot extends StatelessWidget {
  const _TypingDot({
    required this.progress,
    required this.delay,
    required this.color,
  });

  final double progress;
  final double delay;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final t = (progress + delay) % 1.0;
    final bounce = t < 0.5 ? t * 2 : (1 - t) * 2;
    return Transform.translate(
      offset: Offset(0, -4 * bounce),
      child: Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}

class _ErrorLine extends StatelessWidget {
  const _ErrorLine({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: colors.errorBg,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(Icons.error_outline, size: 16, color: colors.errorFg),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: context.appTextStyles.bodySmall.copyWith(
                color: colors.errorFg,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Composer extends StatelessWidget {
  const _Composer({required this.controller, required this.onSend});

  final TextEditingController controller;
  final VoidCallback onSend;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: colors.borderSubtle)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              minLines: 1,
              maxLines: 4,
              textInputAction: TextInputAction.send,
              onSubmitted: (_) => onSend(),
              style: context.appTextStyles.bodySmall.copyWith(
                color: colors.textPrimary,
              ),
              decoration: InputDecoration(
                isDense: true,
                hintText: context.l10n.chatbotInputHint,
                hintStyle: context.appTextStyles.bodySmall.copyWith(
                  color: colors.textHint,
                ),
                filled: true,
                fillColor: colors.scaffoldAlt,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Material(
            color: colors.primary,
            shape: const CircleBorder(),
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: onSend,
              child: const SizedBox(
                width: 40,
                height: 40,
                child: Icon(Icons.send_rounded, color: Colors.white, size: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

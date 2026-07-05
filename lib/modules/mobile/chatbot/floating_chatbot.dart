import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpt_markdown/gpt_markdown.dart';

import '../../../utilities/extensions/context_extensions.dart';
import 'cubit/chatbot_cubit.dart';

/// Floating AI chatbot that lives in the mobile shell overlay: a launcher button
/// pinned to the bottom-left that expands into a sender/receiver chat panel.
///
/// Self-contained — it owns its own [ChatbotCubit] and open/closed state so it
/// can sit in the shell `Stack` independent of dashboard navigation.
class FloatingChatbot extends StatefulWidget {
  const FloatingChatbot({this.showAboveFab = false, super.key});

  final bool showAboveFab;

  @override
  State<FloatingChatbot> createState() => _FloatingChatbotState();
}

class _FloatingChatbotState extends State<FloatingChatbot> {
  bool _open = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 16,
      bottom: widget.showAboveFab ? 88 : 16,
      child: _open
          ? TapRegion(
              onTapOutside: (_) => setState(() => _open = false),
              child: BlocProvider(
                create: (_) => ChatbotCubit(),
                child: _ChatPanel(onClose: () => setState(() => _open = false)),
              ),
            )
          : _LauncherButton(onTap: () => setState(() => _open = true)),
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

class _ChatPanel extends StatefulWidget {
  const _ChatPanel({required this.onClose});

  final VoidCallback onClose;

  @override
  State<_ChatPanel> createState() => _ChatPanelState();
}

class _ChatPanelState extends State<_ChatPanel> {
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
    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeight = MediaQuery.sizeOf(context).height;

    // Responsive sizing for mobile screens.
    final panelWidth = (screenWidth - 32).clamp(280.0, 360.0);
    final panelHeight = (screenHeight * 0.6).clamp(320.0, 480.0);

    return Material(
      color: colors.surface,
      elevation: 8,
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        width: panelWidth,
        height: panelHeight,
        child: Column(
          children: [
            _Header(onClose: widget.onClose),
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
            _Composer(controller: _inputController, onSend: _send),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.onClose});

  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
      decoration: BoxDecoration(
        color: colors.primary,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.smart_toy_outlined,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              context.l10n.chatbotTitle,
              style: context.appTextStyles.emphasisMedium.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            tooltip: context.l10n.chatbotClose,
            icon: const Icon(Icons.close, color: Colors.white, size: 20),
            onPressed: onClose,
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
          maxWidth: MediaQuery.sizeOf(context).width * 0.7,
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/manager/private_chat_cubit/private_chat_cubit.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/private_chat/input/chat_input_bar.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/private_chat/messages/date_separator.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/private_chat/messages/message_bubble.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/private_chat/messages/typing_indicator.dart';

class PrivateChatBody extends StatefulWidget {
  final ChatConversation conversation;

  const PrivateChatBody({super.key, required this.conversation});

  @override
  State<PrivateChatBody> createState() => _PrivateChatBodyState();
}

class _PrivateChatBodyState extends State<PrivateChatBody> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  bool _showDateSeparator(List<ChatMessage> messages, int index) {
    if (index == 0) return true;
    final prev = messages[index - 1].timestamp;
    final curr = messages[index].timestamp;
    return prev.year != curr.year ||
        prev.month != curr.month ||
        prev.day != curr.day;
  }

  void _onAttachment(AttachmentOption option) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${option.label} selected'),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: ChatColors.primary,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PrivateChatCubit, PrivateChatState>(
      listener: (context, state) {
        if (state is PrivateChatLoaded) _scrollToBottom();
      },
      builder: (context, state) {
        if (state is PrivateChatInitial || state is PrivateChatLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is PrivateChatError) {
          return Center(child: Text(state.message));
        }

        final loaded = state as PrivateChatLoaded;

        return Column(
          children: [
            Expanded(
              child: Container(
                color: ChatColors.background,
                child: ListView.builder(
                  controller: _scrollController,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  itemCount:
                      loaded.messages.length + (loaded.isOtherTyping ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (loaded.isOtherTyping &&
                        index == loaded.messages.length) {
                      return TypingIndicator(
                          user: widget.conversation.otherUser);
                    }
                    final message = loaded.messages[index];
                    return Column(
                      children: [
                        if (_showDateSeparator(loaded.messages, index))
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: DateSeparator(date: message.timestamp),
                          ),
                        MessageBubble(message: message),
                      ],
                    );
                  },
                ),
              ),
            ),
            ChatInputBar(
              onSendText: (text) =>
                  context.read<PrivateChatCubit>().sendTextMessage(text),
              onSendVoice: () =>
                  context.read<PrivateChatCubit>().sendVoiceMessage(),
              onAttachment: _onAttachment,
            ),
          ],
        );
      },
    );
  }
}

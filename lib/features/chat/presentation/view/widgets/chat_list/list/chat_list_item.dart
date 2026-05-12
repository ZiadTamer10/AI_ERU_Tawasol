import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/chat_list/list/chat_list_item_avatar.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/chat_list/list/chat_list_item_subtitle.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/chat_list/list/chat_list_item_title.dart';

class ChatListItem extends StatelessWidget {
  final ChatConversation conversation;
  final VoidCallback onTap;

  const ChatListItem({
    super.key,
    required this.conversation,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: ChatColors.primary.withValues(alpha: 0.05),
      highlightColor: ChatColors.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            ChatListItemAvatar(user: conversation.otherUser),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChatListItemTitle(conversation: conversation),
                  const SizedBox(height: 4),
                  ChatListItemSubtitle(conversation: conversation),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

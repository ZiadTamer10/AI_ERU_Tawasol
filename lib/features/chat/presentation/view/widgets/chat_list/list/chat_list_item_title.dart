import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class ChatListItemTitle extends StatelessWidget {
  final ChatConversation conversation;

  const ChatListItemTitle({super.key, required this.conversation});

  String _formatTime(DateTime dt) {
    final now = DateTime.now();
    final diff = now.difference(dt);
    if (diff.inDays == 0) {
      return '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
    }
    if (diff.inDays == 1) return 'Yesterday';
    if (diff.inDays < 7) {
      const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
      return days[dt.weekday - 1];
    }
    return '${dt.day}/${dt.month}/${dt.year % 100}';
  }

  @override
  Widget build(BuildContext context) {
    final user = conversation.otherUser;
    final last = conversation.lastMessage;
    final unread = conversation.unreadCount;

    return Row(
      children: [
        if (conversation.isPinned) ...[
          const Icon(Icons.push_pin_rounded,
              size: 12, color: ChatColors.textHint),
          const SizedBox(width: 4),
        ],
        Expanded(
          child: Text(
            user.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 15,
              fontWeight: unread > 0 ? FontWeight.w700 : FontWeight.w600,
              color: ChatColors.textPrimary,
            ),
          ),
        ),
        const SizedBox(width: 8),
        if (last != null)
          Text(
            _formatTime(last.timestamp),
            style: GoogleFonts.plusJakartaSans(
              fontSize: 12,
              color: unread > 0 ? ChatColors.primary : ChatColors.textHint,
              fontWeight: unread > 0 ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
      ],
    );
  }
}

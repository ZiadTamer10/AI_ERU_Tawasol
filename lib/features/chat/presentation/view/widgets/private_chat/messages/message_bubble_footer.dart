import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/shared/message_status_icon.dart';

class MessageBubbleFooter extends StatelessWidget {
  final ChatMessage message;

  const MessageBubbleFooter({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final isMe = message.isFromMe;
    final time =
        '${message.timestamp.hour.toString().padLeft(2, '0')}:${message.timestamp.minute.toString().padLeft(2, '0')}';

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          time,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 11,
            color: ChatColors.textHint,
          ),
        ),
        if (isMe) ...[
          const SizedBox(width: 4),
          MessageStatusIcon(status: message.status),
        ],
      ],
    );
  }
}

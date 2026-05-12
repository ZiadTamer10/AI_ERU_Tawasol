import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/private_chat/messages/content/message_image_placeholder.dart';

class MessageImageContent extends StatelessWidget {
  final ChatMessage message;

  const MessageImageContent({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(20),
        topRight: const Radius.circular(20),
        bottomLeft: Radius.circular(message.isFromMe ? 20 : 4),
        bottomRight: Radius.circular(message.isFromMe ? 4 : 20),
      ),
      child: SizedBox(
        width: 220,
        height: 160,
        child: message.fileUrl != null
            ? Image.network(
                message.fileUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const MessageImagePlaceholder(),
              )
            : const MessageImagePlaceholder(),
      ),
    );
  }
}

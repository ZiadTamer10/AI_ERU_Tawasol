import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class ChatMicButton extends StatelessWidget {
  final VoidCallback onHold;

  const ChatMicButton({super.key, required this.onHold});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onHold,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: ChatColors.primary.withValues(alpha: 0.1),
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.mic_rounded,
            color: ChatColors.primary, size: 22),
      ),
    );
  }
}

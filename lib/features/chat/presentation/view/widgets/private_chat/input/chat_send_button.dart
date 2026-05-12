import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class ChatSendButton extends StatelessWidget {
  final VoidCallback onTap;

  const ChatSendButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        decoration: const BoxDecoration(
          color: ChatColors.primary,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.send_rounded, color: Colors.white, size: 20),
      ),
    );
  }
}

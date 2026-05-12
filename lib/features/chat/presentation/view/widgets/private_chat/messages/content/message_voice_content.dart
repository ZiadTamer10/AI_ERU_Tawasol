import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';
import 'package:ai_eru_tawasol/features/chat/presentation/view/widgets/private_chat/voice/voice_message_widget.dart';

class MessageVoiceContent extends StatelessWidget {
  final ChatMessage message;

  const MessageVoiceContent({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: VoiceMessageWidget(message: message),
    );
  }
}

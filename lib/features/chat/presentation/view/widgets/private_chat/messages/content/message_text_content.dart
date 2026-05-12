import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class MessageTextContent extends StatelessWidget {
  final ChatMessage message;

  const MessageTextContent({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Text(
        message.text ?? '',
        style: GoogleFonts.plusJakartaSans(
          fontSize: 14.5,
          height: 1.45,
          color: message.isFromMe
              ? ChatColors.sentText
              : ChatColors.receivedText,
        ),
      ),
    );
  }
}

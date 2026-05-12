import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class ChatNewFab extends StatelessWidget {
  final VoidCallback onTap;

  const ChatNewFab({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onTap,
      backgroundColor: ChatColors.primary,
      foregroundColor: Colors.white,
      elevation: 4,
      icon: const Icon(Icons.edit_rounded, size: 20),
      label: Text(
        'New Chat',
        style: GoogleFonts.plusJakartaSans(
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ),
    );
  }
}

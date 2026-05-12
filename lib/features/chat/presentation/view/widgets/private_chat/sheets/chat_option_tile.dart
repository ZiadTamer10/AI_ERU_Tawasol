import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class ChatOptionTile extends StatelessWidget {
  final ChatOption option;
  final VoidCallback onTap;

  const ChatOptionTile({super.key, required this.option, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final color = option.isDestructive
        ? const Color(0xFFE53935)
        : ChatColors.textSecondary;
    return ListTile(
      leading: Icon(option.icon, color: color),
      title: Text(
        option.label,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: option.isDestructive
              ? const Color(0xFFE53935)
              : ChatColors.textPrimary,
        ),
      ),
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}

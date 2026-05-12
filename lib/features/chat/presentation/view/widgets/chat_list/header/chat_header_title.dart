import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatHeaderTitle extends StatelessWidget {
  final int totalConversations;

  const ChatHeaderTitle({super.key, required this.totalConversations});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Messages',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: -0.5,
          ),
        ),
        Text(
          '$totalConversations conversations',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 13,
            color: Colors.white.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class EmptyChatsState extends StatelessWidget {
  final VoidCallback onNewChat;

  const EmptyChatsState({super.key, required this.onNewChat});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                color: ChatColors.background,
                shape: BoxShape.circle,
                border: Border.all(
                    color: ChatColors.primary.withValues(alpha: 0.15),
                    width: 2),
              ),
              child: const Icon(
                Icons.chat_bubble_outline_rounded,
                size: 48,
                color: ChatColors.primary,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'No Conversations Yet',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: ChatColors.textPrimary,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Start a conversation with your professors,\nteaching assistants, or administrators.',
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                height: 1.6,
                color: ChatColors.textSecondary,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: onNewChat,
              icon: const Icon(Icons.add_rounded, size: 18),
              label: Text(
                'Start a New Chat',
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: ChatColors.primary,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

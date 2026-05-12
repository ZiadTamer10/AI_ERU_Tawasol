import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/chat/data/models/chat_models.dart';

class ChatNoResultsState extends StatelessWidget {
  final String query;

  const ChatNoResultsState({super.key, required this.query});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.search_off_rounded,
              size: 56, color: ChatColors.textHint),
          const SizedBox(height: 16),
          Text(
            'No results for "$query"',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ChatColors.textSecondary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Try a different name or student ID',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              color: ChatColors.textHint,
            ),
          ),
        ],
      ),
    );
  }
}

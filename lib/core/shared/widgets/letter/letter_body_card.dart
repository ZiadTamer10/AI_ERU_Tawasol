import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/core/shared/widgets/letter/letter_footer.dart';
import 'package:ai_eru_tawasol/core/shared/widgets/letter/letter_header_strip.dart';

/// Generic "letter-style" card used in announcement and content details.
class LetterBodyCard extends StatelessWidget {
  final String body;
  final Color accentColor;
  final Color accentLightColor;
  final IconData accentIcon;
  final String headerLabel;
  final String authorName;
  final String authorInitials;
  final String authorSubtitle;

  const LetterBodyCard({
    super.key,
    required this.body,
    required this.accentColor,
    required this.accentLightColor,
    required this.accentIcon,
    this.headerLabel = 'Message',
    required this.authorName,
    required this.authorInitials,
    required this.authorSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LetterHeaderStrip(
            label: headerLabel,
            color: accentColor,
            lightColor: accentLightColor,
            icon: accentIcon,
          ),
          Container(height: 1, color: const Color(0xffE2E8F0)),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              body,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                color: const Color(0xff1E293B),
                height: 1.75,
              ),
            ),
          ),
          Container(height: 1, color: const Color(0xffE2E8F0)),
          LetterFooter(
            authorName: authorName,
            authorInitials: authorInitials,
            subtitle: authorSubtitle,
            color: accentColor,
            lightColor: accentLightColor,
          ),
        ],
      ),
    );
  }
}

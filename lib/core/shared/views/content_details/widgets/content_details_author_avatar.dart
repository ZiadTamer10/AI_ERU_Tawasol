import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/core/shared/models/content_display_item.dart';

class ContentDetailsAuthorAvatar extends StatelessWidget {
  final ContentDisplayItem item;
  const ContentDetailsAuthorAvatar({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            item.typeColor.withValues(alpha: 0.15),
            item.typeColor.withValues(alpha: 0.08),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: item.typeColor.withValues(alpha: 0.2),
          width: 1.5,
        ),
      ),
      child: Center(
        child: Text(
          item.authorInitials,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: item.typeColor,
          ),
        ),
      ),
    );
  }
}

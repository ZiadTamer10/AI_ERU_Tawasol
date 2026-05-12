import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/details/announ_details_letter_footer.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/details/announ_details_letter_header_strip.dart';

class AnnounDetailsLetterBody extends StatelessWidget {
  final Announcement announcement;

  const AnnounDetailsLetterBody({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AnnounColors.surface,
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
          AnnounDetailsLetterHeaderStrip(announcement: announcement),
          Container(height: 1, color: AnnounColors.divider),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
              announcement.body,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                color: AnnounColors.textPrimary,
                height: 1.75,
              ),
            ),
          ),
          Container(height: 1, color: AnnounColors.divider),
          AnnounDetailsLetterFooter(announcement: announcement),
        ],
      ),
    );
  }
}

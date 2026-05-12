import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/extensions/announcement_type_ui_ext.dart';

class AnnounDetailsLetterFooter extends StatelessWidget {
  final Announcement announcement;

  const AnnounDetailsLetterFooter({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 16),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: announcement.type.lightColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                announcement.doctorInitials,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                  color: announcement.type.color,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                announcement.doctorName,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w700,
                  color: AnnounColors.textPrimary,
                ),
              ),
              Text(
                '${announcement.subjectName} · ${announcement.formattedDate}',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 11,
                  color: AnnounColors.textHint,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

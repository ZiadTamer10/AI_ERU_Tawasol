import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/extensions/announcement_type_ui_ext.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/cards/announ_subject_avatar.dart';

class AnnounCardTopRow extends StatelessWidget {
  final Announcement announcement;

  const AnnounCardTopRow({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnnounSubjectAvatar(announcement: announcement, size: 42),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${announcement.subjectCode} · ${announcement.subjectName}',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 11.5,
                  fontWeight: FontWeight.w600,
                  color: announcement.type.color,
                  letterSpacing: 0.1,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 2),
              Text(
                announcement.doctorName,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 11,
                  color: AnnounColors.textHint,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              announcement.timeAgo,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 10.5,
                color: AnnounColors.textHint,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (!announcement.isRead) ...[
              const SizedBox(height: 4),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: announcement.type.color,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}

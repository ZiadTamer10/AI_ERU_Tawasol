import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/extensions/announcement_type_ui_ext.dart';

class AnnounSubjectAvatar extends StatelessWidget {
  final Announcement announcement;
  final double size;

  const AnnounSubjectAvatar({
    super.key,
    required this.announcement,
    this.size = 48,
  });

  @override
  Widget build(BuildContext context) {
    final color = announcement.type.color;
    final light = announcement.type.lightColor;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: light,
        borderRadius: BorderRadius.circular(size * 0.28),
        border: Border.all(color: color.withValues(alpha: 0.2), width: 1.5),
      ),
      child: announcement.isFromAdmin
          ? Icon(Icons.admin_panel_settings_rounded,
              color: color, size: size * 0.48)
          : Center(
              child: Text(
                announcement.subjectInitials,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: size * 0.34,
                  fontWeight: FontWeight.w800,
                  color: color,
                  letterSpacing: 0.5,
                ),
              ),
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/extensions/announcement_type_ui_ext.dart';

class AnnounDetailsLetterHeaderStrip extends StatelessWidget {
  final Announcement announcement;

  const AnnounDetailsLetterHeaderStrip({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            announcement.type.color.withValues(alpha: 0.08),
            announcement.type.color.withValues(alpha: 0.03),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: announcement.type.lightColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(announcement.type.icon,
                size: 18, color: announcement.type.color),
          ),
          const SizedBox(width: 10),
          Text(
            'Message',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: announcement.type.color,
            ),
          ),
        ],
      ),
    );
  }
}

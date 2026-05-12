import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/extensions/announcement_priority_ui_ext.dart';

class AnnounPriorityBadge extends StatelessWidget {
  final AnnouncementPriority priority;

  const AnnounPriorityBadge({super.key, required this.priority});

  @override
  Widget build(BuildContext context) {
    if (priority == AnnouncementPriority.normal) return const SizedBox.shrink();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: priority.lightColor,
        borderRadius: BorderRadius.circular(20),
        border:
            Border.all(color: priority.color.withValues(alpha: 0.3), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(priority.icon, size: 11, color: priority.color),
          const SizedBox(width: 4),
          Text(
            priority.label,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 10.5,
              fontWeight: FontWeight.w700,
              color: priority.color,
              letterSpacing: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}

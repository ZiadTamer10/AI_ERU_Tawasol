import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/data/models/announ_models.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/extensions/announcement_priority_ui_ext.dart';

class AddAnnounPriorityCard extends StatelessWidget {
  final AnnouncementPriority priority;
  final bool isSelected;
  final VoidCallback onTap;

  const AddAnnounPriorityCard({
    super.key,
    required this.priority,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected
              ? priority.color.withValues(alpha: 0.08)
              : AnnounColors.inputBg,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? priority.color : AnnounColors.divider,
            width: isSelected ? 1.8 : 1.2,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: isSelected ? priority.color : AnnounColors.divider,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                priority.icon,
                size: 18,
                color: isSelected ? Colors.white : AnnounColors.textHint,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              priority.label,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color:
                    isSelected ? priority.color : AnnounColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';

class AnnounEmptyState extends StatelessWidget {
  const AnnounEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                color: AnnounColors.background,
                shape: BoxShape.circle,
                border: Border.all(
                    color: AnnounColors.primary.withValues(alpha: 0.15),
                    width: 2),
              ),
              child: const Icon(Icons.campaign_outlined,
                  size: 40, color: AnnounColors.primary),
            ),
            const SizedBox(height: 20),
            Text(
              'No Announcements Yet',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: AnnounColors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'There are no announcements at the moment.\nCheck back later for updates.',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 13,
                color: AnnounColors.textSecondary,
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

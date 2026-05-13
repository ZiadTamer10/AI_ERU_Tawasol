import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';

class AddAnnounAddFileButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddAnnounAddFileButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: AnnounColors.primary.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(color: AnnounColors.primary.withValues(alpha: 0.25)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.add_rounded, size: 14, color: AnnounColors.primary),
            const SizedBox(width: 4),
            Text(
              'Add File',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: AnnounColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

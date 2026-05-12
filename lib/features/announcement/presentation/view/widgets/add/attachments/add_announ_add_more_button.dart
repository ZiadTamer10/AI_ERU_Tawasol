import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';

class AddAnnounAddMoreButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddAnnounAddMoreButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AnnounColors.inputBg,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AnnounColors.divider, width: 1.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.add_rounded,
                size: 16, color: AnnounColors.textSecondary),
            const SizedBox(width: 6),
            Text(
              'Add another file',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 12.5,
                fontWeight: FontWeight.w600,
                color: AnnounColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAnnounRequiredBadge extends StatelessWidget {
  const AddAnnounRequiredBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xffFEF3C7),
        borderRadius: BorderRadius.circular(8),
        border:
            Border.all(color: const Color(0xffF59E0B).withValues(alpha: 0.4)),
      ),
      child: Text(
        'Required',
        style: GoogleFonts.plusJakartaSans(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: const Color(0xffD97706),
        ),
      ),
    );
  }
}

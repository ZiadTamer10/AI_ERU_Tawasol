import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAnnounEveryoneInfo extends StatelessWidget {
  const AddAnnounEveryoneInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xffD1FAE5),
        borderRadius: BorderRadius.circular(12),
        border:
            Border.all(color: const Color(0xff059669).withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: const Color(0xff059669).withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.public_rounded,
                size: 18, color: Color(0xff059669)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Visible to all students across all departments',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: const Color(0xff065F46),
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/course/presentation/constants/course_colors.dart';

class CourseContentCardAttachmentChip extends StatelessWidget {
  final int count;
  const CourseContentCardAttachmentChip({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color: CourseColors.inputBg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.attach_file_rounded,
              size: 11, color: CourseColors.textSecondary),
          const SizedBox(width: 3),
          Text(
            '$count',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 10.5,
              fontWeight: FontWeight.w600,
              color: CourseColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

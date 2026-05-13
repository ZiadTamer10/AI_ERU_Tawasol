import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/presentation/constants/course_colors.dart';

class CourseContentCardFooter extends StatelessWidget {
  final CourseContent content;

  const CourseContentCardFooter({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (content.attachments.isNotEmpty) ...[
          _AttachmentChip(count: content.attachments.length),
          const SizedBox(width: 8),
        ],
        const Spacer(),
        Text(
          'View Details',
          style: GoogleFonts.plusJakartaSans(
            fontSize: 11.5,
            fontWeight: FontWeight.w700,
            color: CourseColors.primary,
          ),
        ),
        const SizedBox(width: 2),
        const Icon(Icons.arrow_forward_ios_rounded,
            size: 10, color: CourseColors.primary),
      ],
    );
  }
}

class _AttachmentChip extends StatelessWidget {
  final int count;
  const _AttachmentChip({required this.count});

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

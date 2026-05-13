import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/presentation/constants/course_colors.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/details/content_card/course_content_card_attachment_chip.dart';

class CourseContentCardFooter extends StatelessWidget {
  final CourseContent content;

  const CourseContentCardFooter({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (content.attachments.isNotEmpty) ...[
          CourseContentCardAttachmentChip(count: content.attachments.length),
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


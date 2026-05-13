import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';

class CourseCardCodeBadge extends StatelessWidget {
  final Course course;
  const CourseCardCodeBadge({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: course.accentColor.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        course.code,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          color: course.accentColor,
          letterSpacing: 0.3,
        ),
      ),
    );
  }
}

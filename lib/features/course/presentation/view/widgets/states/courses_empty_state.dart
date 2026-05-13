import 'package:ai_eru_tawasol/features/course/presentation/constants/course_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursesEmptyState extends StatelessWidget {
  const CoursesEmptyState({super.key});

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
                color: CourseColors.background,
                shape: BoxShape.circle,
                border: Border.all(
                  color: CourseColors.primary.withValues(alpha: 0.15),
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.school_outlined,
                size: 40,
                color: CourseColors.primary,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'No Courses Yet',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: CourseColors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'You have no courses assigned this semester.\nCheck back later for updates.',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 13,
                color: CourseColors.textSecondary,
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

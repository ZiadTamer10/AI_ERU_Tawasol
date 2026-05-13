import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/presentation/constants/course_colors.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/home/card/course_card_avatar.dart';

class CourseCardHeader extends StatelessWidget {
  final Course course;

  const CourseCardHeader({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CourseCardAvatar(course: course),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course.name,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: CourseColors.textPrimary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              _CodeBadge(course: course),
              const SizedBox(height: 4),
              Text(
                course.doctorName,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12.5,
                  color: CourseColors.textHint,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const Icon(Icons.chevron_right_rounded,
            color: CourseColors.textHint, size: 22),
      ],
    );
  }
}

class _CodeBadge extends StatelessWidget {
  final Course course;
  const _CodeBadge({required this.course});

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

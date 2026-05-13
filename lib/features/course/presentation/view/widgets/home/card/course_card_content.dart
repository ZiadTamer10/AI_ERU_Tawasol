import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/presentation/constants/course_colors.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/home/card/course_card_header.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/home/card/course_card_info_row.dart';

class CourseCardContent extends StatelessWidget {
  final Course course;

  const CourseCardContent({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: CourseColors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.055),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
          BoxShadow(
            color: course.accentColor.withValues(alpha: 0.07),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CourseCardHeader(course: course),
            const SizedBox(height: 12),
            const Divider(color: CourseColors.divider, height: 1),
            const SizedBox(height: 10),
            CourseCardInfoRow(course: course),
          ],
        ),
      ),
    );
  }
}

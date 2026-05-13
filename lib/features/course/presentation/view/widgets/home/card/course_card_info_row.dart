import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/presentation/constants/course_colors.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/home/card/course_info_chip.dart';

class CourseCardInfoRow extends StatelessWidget {
  final Course course;

  const CourseCardInfoRow({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CourseInfoChip(
          icon: Icons.people_rounded,
          label: '${course.studentCount} students',
          color: CourseColors.primary,
        ),
        const SizedBox(width: 8),
        CourseInfoChip(
          icon: Icons.library_books_rounded,
          label: '${course.contentCount} items',
          color: course.accentColor,
        ),
      ],
    );
  }
}

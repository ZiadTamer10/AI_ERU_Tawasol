import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';

class CourseCardAvatar extends StatelessWidget {
  final Course course;
  final double size;

  const CourseCardAvatar({
    super.key,
    required this.course,
    this.size = 54,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'course_hero_${course.id}',
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: course.accentColor,
          borderRadius: BorderRadius.circular(14),
        ),
        alignment: Alignment.center,
        child: Text(
          course.initials,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}

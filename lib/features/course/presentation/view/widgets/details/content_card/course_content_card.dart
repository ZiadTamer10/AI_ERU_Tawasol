import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/details/content_card/course_content_card_content.dart';

class CourseContentCard extends StatelessWidget {
  final CourseContent content;
  final int index;
  final VoidCallback onTap;

  const CourseContentCard({
    super.key,
    required this.content,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 350 + index * 60),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) => Opacity(
        opacity: value,
        child: Transform.translate(
          offset: Offset(0, 20 * (1 - value)),
          child: child,
        ),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: CourseContentCardContent(content: content),
      ),
    );
  }
}

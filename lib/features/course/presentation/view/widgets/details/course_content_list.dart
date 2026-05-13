import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/course/data/models/course_models.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/details/content_card/course_content_card.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/states/courses_empty_state.dart';

class CourseContentList extends StatelessWidget {
  final List<CourseContent> items;
  final void Function(CourseContent) onTap;

  const CourseContentList({
    super.key,
    required this.items,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) return const CoursesEmptyState();

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 6, bottom: 24),
      itemCount: items.length,
      itemBuilder: (context, index) => CourseContentCard(
        content: items[index],
        index: index,
        onTap: () => onTap(items[index]),
      ),
    );
  }
}

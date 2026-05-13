import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/core/shared/widgets/skeleton/skeleton_card_wrapper.dart';
import 'package:ai_eru_tawasol/features/course/presentation/view/widgets/states/course_skeleton_content.dart';

class CoursesLoadingSkeleton extends StatelessWidget {
  const CoursesLoadingSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: 4,
      itemBuilder: (context, index) => SkeletonCardWrapper(
        index: index,
        child: const CourseSkeletonContent(),
      ),
    );
  }
}


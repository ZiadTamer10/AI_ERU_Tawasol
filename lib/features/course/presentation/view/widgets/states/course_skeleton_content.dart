import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/core/shared/widgets/skeleton/skeleton_bone.dart';

class CourseSkeletonContent extends StatelessWidget {
  const CourseSkeletonContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Row(
          children: [
            SkeletonBone(width: 54, height: 54, radius: 14),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonBone(width: double.infinity, height: 13, radius: 6),
                  SizedBox(height: 6),
                  SkeletonBone(width: 60, height: 20, radius: 6),
                  SizedBox(height: 6),
                  SkeletonBone(width: 130, height: 11, radius: 5),
                ],
              ),
            ),
            SizedBox(width: 8),
            SkeletonBone(width: 20, height: 20, radius: 10),
          ],
        ),
        SizedBox(height: 12),
        SkeletonBone(width: double.infinity, height: 1, radius: 1),
        SizedBox(height: 10),
        Row(
          children: [
            SkeletonBone(width: 96, height: 24, radius: 12),
            SizedBox(width: 8),
            SkeletonBone(width: 80, height: 24, radius: 12),
          ],
        ),
      ],
    );
  }
}

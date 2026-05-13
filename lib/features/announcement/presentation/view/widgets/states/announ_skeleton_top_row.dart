import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/states/announ_skeleton_bone.dart';

class AnnounSkeletonTopRow extends StatelessWidget {
  const AnnounSkeletonTopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AnnounSkeletonBone(width: 42, height: 42, radius: 12),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              AnnounSkeletonBone(width: 140, height: 11, radius: 6),
              SizedBox(height: 6),
              AnnounSkeletonBone(width: 100, height: 10, radius: 5),
            ],
          ),
        ),
        const AnnounSkeletonBone(width: 48, height: 10, radius: 5),
      ],
    );
  }
}

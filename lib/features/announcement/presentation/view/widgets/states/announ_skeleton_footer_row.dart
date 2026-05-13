import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/states/announ_skeleton_bone.dart';

class AnnounSkeletonFooterRow extends StatelessWidget {
  const AnnounSkeletonFooterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        AnnounSkeletonBone(width: 80, height: 22, radius: 11),
        SizedBox(width: 6),
        AnnounSkeletonBone(width: 68, height: 22, radius: 11),
        Spacer(),
        AnnounSkeletonBone(width: 72, height: 11, radius: 5),
      ],
    );
  }
}

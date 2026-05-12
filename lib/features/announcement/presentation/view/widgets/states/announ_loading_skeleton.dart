import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/states/announ_loading_skeleton_card.dart';

class AnnounLoadingSkeleton extends StatelessWidget {
  const AnnounLoadingSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: 4,
      itemBuilder: (context, index) => AnnounLoadingSkeletonCard(index: index),
    );
  }
}

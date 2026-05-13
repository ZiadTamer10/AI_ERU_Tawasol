import 'package:flutter/material.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/constants/announ_colors.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/states/announ_skeleton_bone.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/states/announ_skeleton_footer_row.dart';
import 'package:ai_eru_tawasol/features/announcement/presentation/view/widgets/states/announ_skeleton_top_row.dart';

class AnnounLoadingSkeletonCard extends StatefulWidget {
  final int index;

  const AnnounLoadingSkeletonCard({super.key, required this.index});

  @override
  State<AnnounLoadingSkeletonCard> createState() =>
      _AnnounLoadingSkeletonCardState();
}

class _AnnounLoadingSkeletonCardState extends State<AnnounLoadingSkeletonCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _anim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    )..repeat(reverse: true);
    _anim = Tween<double>(begin: 0.4, end: 0.85).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    Future.delayed(Duration(milliseconds: widget.index * 120), () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _anim,
      builder: (context, _) => Opacity(
        opacity: _anim.value,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: AnnounColors.surface,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 12,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(width: 4, color: AnnounColors.divider),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          AnnounSkeletonTopRow(),
                          SizedBox(height: 12),
                          AnnounSkeletonBone(
                              width: double.infinity, height: 13, radius: 6),
                          SizedBox(height: 6),
                          AnnounSkeletonBone(width: 220, height: 13, radius: 6),
                          SizedBox(height: 10),
                          AnnounSkeletonBone(
                              width: double.infinity, height: 11, radius: 5),
                          SizedBox(height: 5),
                          AnnounSkeletonBone(width: 180, height: 11, radius: 5),
                          SizedBox(height: 14),
                          AnnounSkeletonFooterRow(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

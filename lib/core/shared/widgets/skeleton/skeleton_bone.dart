import 'package:flutter/material.dart';

class SkeletonBone extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final Color color;

  const SkeletonBone({
    super.key,
    required this.width,
    required this.height,
    required this.radius,
    this.color = const Color(0xffE2E8F0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width == double.infinity ? null : width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}

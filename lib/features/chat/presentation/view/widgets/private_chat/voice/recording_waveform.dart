import 'dart:math' as math;
import 'package:flutter/material.dart';

class RecordingWaveform extends StatelessWidget {
  final Animation<double> animation;

  const RecordingWaveform({super.key, required this.animation});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final t = animation.value * 2 * math.pi;
        return SizedBox(
          height: 32,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(20, (i) {
              final phase = i * math.pi / 5;
              final h =
                  (math.sin(t + phase).abs() * 20 + 4).clamp(4.0, 28.0);
              return Container(
                width: 3,
                height: h,
                decoration: BoxDecoration(
                  color: const Color(0xffDC2626).withValues(alpha: 0.7),
                  borderRadius: BorderRadius.circular(2),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}

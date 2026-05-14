import 'package:flutter/material.dart';

class OnBoardingPageIndicator extends StatelessWidget {
  const OnBoardingPageIndicator({
    super.key,
    required this.count,
    required this.current,
  });

  final int count;
  final int current;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (i) {
        final isActive = i == current;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 320),
          curve: Curves.easeInOutCubic,
          margin: const EdgeInsets.symmetric(horizontal: 3.5),
          width: isActive ? 22.0 : 7.0,
          height: 7.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            gradient: isActive
                ? const LinearGradient(
                    colors: [Color(0xff4A7AFF), Color(0xff3D6FFF)],
                  )
                : null,
            color: isActive ? null : Colors.white.withValues(alpha: 0.22),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: const Color(0xff3D6FFF).withValues(alpha: 0.50),
                      blurRadius: 8,
                      spreadRadius: 0,
                    ),
                  ]
                : null,
          ),
        );
      }),
    );
  }
}

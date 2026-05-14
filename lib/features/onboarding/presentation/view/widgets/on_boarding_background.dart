import 'package:flutter/material.dart';

class OnBoardingBackground extends StatelessWidget {
  const OnBoardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff000D24),
                Color(0xff001440),
                Color(0xff001E6B),
                Color(0xff000A1A),
              ],
              stops: [0.0, 0.35, 0.70, 1.0],
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.15,
          left: size.width * 0.5 - size.width * 0.55,
          child: Container(
            width: size.width * 1.1,
            height: size.width * 1.1,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color(0xff3D6FFF).withValues(alpha: 0.11),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -size.width * 0.2,
          right: -size.width * 0.1,
          child: Container(
            width: size.width * 0.72,
            height: size.width * 0.72,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color(0xff6B9FFF).withValues(alpha: 0.06),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -size.width * 0.15,
          left: -size.width * 0.1,
          child: Container(
            width: size.width * 0.65,
            height: size.width * 0.65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  const Color(0xff003096).withValues(alpha: 0.18),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

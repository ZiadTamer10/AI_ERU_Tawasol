import 'package:flutter/material.dart';

class SplashLogoIcon extends StatelessWidget {
  const SplashLogoIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 136,
          height: 136,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                const Color(0xff3D6FFF).withValues(alpha: 0.06),
                Colors.transparent,
              ],
            ),
          ),
        ),
        Container(
          width: 112,
          height: 112,
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
        Container(
          width: 95,
          height: 95,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xff3D6FFF).withValues(alpha: 0.22),
              width: 1,
            ),
          ),
        ),
        Container(
          width: 84,
          height: 84,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff4A7AFF),
                Color(0xff003096),
                Color(0xff001E6B),
              ],
              stops: [0.0, 0.55, 1.0],
            ),
            borderRadius: BorderRadius.circular(26),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.18),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff3D6FFF).withValues(alpha: 0.50),
                blurRadius: 36,
                spreadRadius: 2,
              ),
              BoxShadow(
                color: const Color(0xff001E6B).withValues(alpha: 0.55),
                blurRadius: 18,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: const Icon(
            Icons.hub_rounded,
            size: 42,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
